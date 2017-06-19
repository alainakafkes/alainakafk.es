<main>
  <home show={view.home}></home>
  <about show={view.about}></about>
  <mentions show={view.mentions}></mentions>
  <talks show={view.talks}></talks>
  <words show={view.words}></words>
  <code show={view.code}></code>

  <script type = "text/javascript">
    this.view = {
      home: true,
      about: false,
      mentions: false,
      talks: false,
      words: false,
      code: false
    }
  </script>
  <script type = "text/javascript">
      r = riot.route.create()
      r('/', function () { viewswitch('home') })
      r('/about', function () { viewswitch('about') })
      r('/mentions', function () { viewswitch('mentions') })
      r('/talks', function () { viewswitch('talks') })
      r('/words', function () { viewswitch('words') })
      r('/code', function () { viewswitch('code') })

      var self = this

      function viewswitch(v){
          Object.keys(self.view).forEach(function (k) {
              self.view[k] = false
          })
          self.view[v] = true
          self.update()
      }
  </script>
</main>
