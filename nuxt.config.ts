import { Configuration } from '@nuxt/types'

const config: Configuration = {
  mode: 'spa',
  server: {
    host: '0.0.0.0'
  },
  buildModules: ['@nuxt/typescript-build']
}

export default config
