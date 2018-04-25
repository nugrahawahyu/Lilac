<template>
  <div class="page-container">
    <section class="dark-section">
      <div class="content content--full-height" style="padding: 0;">
        <parallax img-src="images/banner.jpg" style="position: relative;">
          <div style="position: absolute; background-color: rgba(255,255,255,0.5); top: 0; bottom: 0; left: 0; right: 0; z-index: 1;">
            <div class="header-content content content--narrow">
              <h1 class="title"><span style="font-weight: 800;">Hi</span>, you found me</h1>
            </div>
          </div>
        </parallax>
      </div>
    </section>
    <section class="section">
      <div class="content content--narrow">
        <no-ssr>
          <div>
            <a class="twitter-timeline"
              href="https://twitter.com/wahyucnugraha?ref_src=twsrc%5Etfw"
              data-tweet-limit="3">
              Tweets by wahyucnugraha
            </a>
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
          </div>
        </no-ssr>
      </div>
    </section>
  </div>
</template>

<script>
import Parallax from '~/components/Parallax'

export default {
  components: {
    Parallax
  }
}
</script>

<style scoped lang="scss">
h1 {
  font-size: 42px;
  margin-top: 100px;
}

h2 {
  font-size: 28px;
}

.header-content {
  text-align: center;
}

.title
{
  color: #fff;
  font-family: "Escrow Condensed", georgia, times, "\30E1\30A4\30EA\30AA", "Meiryo", "\30D2\30E9\30AE\30CE\89D2\30B4   Pro W3", "Hiragino Kaku Gothic Pro", "\FF2D\FF33\FF30\30B4\30B7\30C3\30AF", "MS PGothic", serif;
}
.users
{
  list-style: none;
  margin: 0;
  padding: 0;
}
.user
{
  margin: 10px 0;
}
.content {
  margin: 0 auto;
  padding: 16px;

  &--narrow {
    max-width: 400px;
  }

  &--full-height {
    height: 80vh;
  }
}

.mystic-section {
  background-color: #e6ecf0;
}

.dark-section {
  background-color: #000;
  color: #fff;
}

.blink_me {
  animation: blinker 1s linear infinite;
}

@keyframes blinker {
  50% {
    opacity: 0;
  }
}
</style>
