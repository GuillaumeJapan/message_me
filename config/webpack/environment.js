const { environment } = require('@rails/webpacker')
// Added for Semantic UI
const webpack = require("webpack")

module.exports = environment

// Added for Semantic UI
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))