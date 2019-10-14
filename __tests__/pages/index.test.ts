import { shallowMount } from '@vue/test-utils'
import IndexPage from '~/pages/index.vue'

describe('index.vue', () => {
  test('renders "hello world"', () => {
    const wrapper = shallowMount(IndexPage)
    expect(wrapper.text()).toMatch("hello world")
  })
})
