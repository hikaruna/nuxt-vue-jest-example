<template>
  <h1>hello {{ title }}</h1>
</template>

<script lang="ts">
import { Vue, Component } from 'vue-property-decorator'

@Component
export default class IndexPage extends Vue {
  title = "world"
}
</script>
