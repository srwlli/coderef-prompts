Other Vercel deployment commands:

  # Standard deployment (no force)
  vercel --prod

  # Development preview
  vercel

  # Specific environment
  vercel --target production
  vercel --target preview

  # With build logs
  vercel --prod --debug

  # List deployments
  vercel ls

  # Rollback to previous
  vercel rollback [deployment-url]

  # Domain management
  vercel domains
  vercel alias

  # Environment variables
  vercel env ls
  vercel env add
  vercel env rm

  Most common:
  - vercel --prod --force - Force production redeploy
  - vercel - Preview deployment
  - vercel ls - List recent deployments