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
- ✅ Daily standup log submission
- ✅ Move smart contract for immutable storage
- ✅ TypeScript support
- ✅ Modern UI with Tailwind CSS
- ✅ Automated deployment and integration
- ✅ Error handling and loading states
- ✅ Blockchain-based timestamping

## 📁 Project Structure

```
├── app/              # Next.js app directory
├── components/       # React components (StandupLogForm, WalletConnect)
├── hooks/            # Custom hooks
├── lib/              # Configuration
└── contract/         # Move contracts (standup_log.move)
```

## 🔧 How It Works

1. **Connect Wallet**: Users connect their IOTA wallet
2. **Fill Standup Form**: Enter what you did, what you'll do, and any blockers
3. **Submit to Blockchain**: The log is recorded as an immutable transaction
4. **Permanent Record**: Your standup is stored on-chain with a timestamp

## 📚 Learn More

- [IOTA Documentation](https://wiki.iota.org/)
- [IOTA dApp Kit](https://github.com/iotaledger/dapp-kit)
- [Next.js Documentation](https://nextjs.org/docs)

## 📄 License

MIT
