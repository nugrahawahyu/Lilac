<template>
  <div style="position: fixed; top: 0; left: 0; right: 0; z-index: 9;">
    <header class="mdl-layout__header" style="display: flex !important; background: #000;">
      <div class="mdl-layout__header-row">
        <!-- Title -->
        <span class="mdl-layout-title">nugraha&middot;</span>
        <strong style="font-weight: 1000; margin-left: 0px;" class="mdl-layout-title">notes</strong>
        <!-- Add spacer, to align navigation to the right -->
        <div class="mdl-layout-spacer"></div>
        <!-- Navigation. We hide it in small screens. -->
      </div>
    </header>
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title">Title</span>
      <nav class="mdl-navigation">
        <a class="mdl-navigation__link" href="">Link</a>
        <a class="mdl-navigation__link" href="">Link</a>
        <a class="mdl-navigation__link" href="">Link</a>
        <a class="mdl-navigation__link" href="">Link</a>
      </nav>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
.header {
  background-color: #000;
}

@media only screen and (max-width: 768px) {
  .mdl-layout__header-row {
    padding: 0;
    margin: 0 auto;
  }
}
</style>
