<template>
  <div class="parallax" :class="customClass" ref="parallax">
    <slot></slot>
  </div>
</template>

<script>
export default {
  props: {
    imgSrc: {
      type: String,
      required: true
    },
    customClass: {
      type: String,
      default: ''
    }
  },
  mounted () {
    this.$refs.parallax.style.backgroundImage = `url(${this.imgSrc})`
  }
}
</script>

<style lang="scss">
.parallax {
  height: 100%;

  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

  img {
    width: 100%;
    object-fit: cover;
  }
}
</style>
