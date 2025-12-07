module pizza_box::standup_log {
    use std::string::String;
    use iota::event;
    use iota::clock;
    use iota::object::{Self, UID, ID};
    use iota::transfer;
    use iota::tx_context::{Self, TxContext};

    // Struct to represent a daily standup log entry
    public struct StandupLog has key, store {
        id: UID,
        team_member: address,
        what_i_did: String,
        what_i_will_do: String,
        blockers: String,
        timestamp: u64,
    }

    // Event emitted when a new standup log is created
    public struct StandupLogCreated has copy, drop {
        log_id: ID,
        team_member: address,
        timestamp: u64,
    }

    // Create a new standup log entry
    public fun create_standup_log(
        what_i_did: String,
        what_i_will_do: String,
        blockers: String,
        clock: &clock::Clock,
        ctx: &mut TxContext
    ) {
        let sender = tx_context::sender(ctx);
        let timestamp = clock::timestamp_ms(clock);
        
        let log = StandupLog {
            id: object::new(ctx),
            team_member: sender,
            what_i_did,
            what_i_will_do,
            blockers,
            timestamp,
        };

        let log_id = object::id(&log);

        event::emit(StandupLogCreated {
            log_id,
            team_member: sender,
            timestamp,
        });

        transfer::public_transfer(log, sender);
    }

    // View functions
    public fun get_team_member(log: &StandupLog): address {
        log.team_member
    }

    public fun get_what_i_did(log: &StandupLog): &String {
        &log.what_i_did
    }

    public fun get_what_i_will_do(log: &StandupLog): &String {
        &log.what_i_will_do
    }

    public fun get_blockers(log: &StandupLog): &String {
        &log.blockers
    }

    public fun get_timestamp(log: &StandupLog): u64 {
        log.timestamp
    }
}
