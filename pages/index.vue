<template>
  <main>
    <section class="dark-section">
      <div class="content content--full-height" style="padding: 0;">
        <parallax img-src="images/banner.jpg" style="position: relative;">
          <div style="position: absolute; background-color: rgba(255,255,255,0.5); top: 0; bottom: 0; left: 0; right: 0; z-index: 1;">
            <div class="header-content content content--narrow">
              <h1><span style="font-weight: 1000;">Wahyu</span> Nugraha</h1>
              <p>Engineer / Technology Enthusiast</p>
            </div>
          </div>
        </parallax>
      </div>
    </section>
    <section class="section">
      <div class="content content--narrow">
        <h2>Follow me on Twitter</h2>
        <no-ssr>
          <div>
            <a href="https://twitter.com/wahyucnugraha?ref_src=twsrc%5Etfw"
              class="twitter-follow-button"
              data-show-count="false">
              Follow @wahyucnugraha
            </a>
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
          </div>
        </no-ssr>
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
  </main>
</template>

<script>
import Parallax from '~/components/Parallax'

export default {
  components: {
    Parallax
  },
  head () {
    return {
      title: 'Wahyu Nugraha | wahyunugraha.com'
    }
  }
}
</script>

<style scoped lang="scss">
h1 {
  font-size: 42px;
  margin-top: 100px;
}

.header-content {
  text-align: center;
}

.title
{
  margin: 30px 0;
  color: #292F33;
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
</style>

<style>
body {
  min-height: 100vh;
}
</style>
