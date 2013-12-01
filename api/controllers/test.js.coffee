TestController = {
  show: (req,res) ->
    console.log 'Test::Show'
    res.view()
  index: (req,res) ->
  console.log 'Test::Index'
    res.send('YEAAAH')
}

module.exports.TestController = TestController