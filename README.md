# Decentralized Daily Standup Log

A decentralized application for recording daily team standup updates immutably on the IOTA blockchain.

## 📝 About

This dApp allows teams to record their daily standup meetings on-chain, ensuring:
- **Immutable Records**: All standup logs are permanently stored on the blockchain
- **Transparency**: Team updates are verifiable and tamper-proof
- **Accountability**: Each team member's contributions are tracked with timestamps
- **Decentralized**: No central authority controls the data

## 🚀 Quick Start

```bash
# Install dependencies
npm install --legacy-peer-deps

# Deploy your contract
npm run iota-deploy

# Start development server
npm run dev
```

## 📚 Documentation

For detailed instructions, see **[INSTRUCTION_GUIDE.md](./INSTRUCTION_GUIDE.md)**

## 🎯 Features

- ✅ Wallet connection with IOTA dApp Kit
- ✅ Daily standup log submission form
- ✅ Real-time display of submitted logs
- ✅ Move smart contract for immutable storage
- ✅ TypeScript support with full type safety
- ✅ Modern responsive UI with Tailwind CSS
- ✅ Automated deployment and integration
- ✅ Error handling and loading states
- ✅ Blockchain-based timestamping
- ✅ Direct links to IOTA Explorer for each log
- ✅ Auto-refresh on successful submission

## 📁 Project Structure

```
├── app/                    # Next.js app directory
│   ├── globals.css        # Global styles
│   ├── layout.tsx         # Root layout
│   └── page.tsx           # Main page
├── components/            # React components
│   ├── StandupLogForm.tsx # Form to submit standup logs
│   ├── StandupLogList.tsx # Display list of logs
│   ├── Wallet-connect.tsx # Wallet connection
│   ├── Provider.tsx       # IOTA client provider
│   └── sample.tsx         # Sample integration
├── contract/              # Move smart contracts
│   └── pizza_box/
│       └── sources/
│           ├── standup_log.move  # Main standup log contract
│           └── pizza_box.move    # Sample contract
├── hooks/                 # Custom React hooks
├── lib/                   # Configuration
│   └── config.ts         # Network and package config
└── scripts/              # Deployment scripts
```

## 🔧 How It Works

1. **Connect Wallet**: Users connect their IOTA wallet using the Connect button
2. **Fill Standup Form**: Enter what you did yesterday, what you'll do today, and any blockers
3. **Submit to Blockchain**: The log is recorded as an immutable transaction on IOTA
4. **View Your Logs**: Submitted logs appear below the form with timestamp and details
5. **Explore on-chain**: Click "View on Explorer" to see the log on IOTA blockchain explorer
6. **Permanent Record**: All standups are stored permanently on-chain with cryptographic proof

## 📊 Where to View Your Logs

After submitting a standup log, you can view it in multiple places:

1. **On the dApp**: Logs automatically appear below the submission form
2. **IOTA Explorer**: Click the "View on Explorer" link for any log
3. **Your Address**: Visit `https://explorer.iota.org/address/[YOUR_ADDRESS]?network=devnet`
4. **Transaction Details**: Each submission generates a transaction viewable on-chain

## 🛠️ Technical Details

- **Blockchain**: IOTA Devnet
- **Smart Contract Language**: Move
- **Frontend Framework**: Next.js 16 with React 19
- **Styling**: Tailwind CSS 4
- **State Management**: React Hooks + TanStack Query
- **Package ID**: `0xe3918ab3e1cb593f9b17ea44184a8bb29b1e19efcc2f98fa2e1f6be55f691384`

## 🔐 Smart Contract

The `standup_log` module provides:
- `StandupLog` struct: Stores daily standup data immutably
- `create_standup_log()`: Creates a new standup entry
- `StandupLogCreated` event: Emitted on each submission
- View functions: `get_team_member()`, `get_what_i_did()`, `get_what_i_will_do()`, `get_blockers()`, `get_timestamp()`
- Address: 0x44da7d2795eafc9444727bb85518bf5ee03edbb1b4f4110b308cba38272a3be4

## 📚 Learn More

- [IOTA Documentation](https://wiki.iota.org/)
- [IOTA dApp Kit](https://github.com/iotaledger/dapp-kit)
- [Move Language](https://move-language.github.io/move/)
- [Next.js Documentation](https://nextjs.org/docs)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

MIT
