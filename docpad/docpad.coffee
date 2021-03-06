# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration

children =
  "Welcome": ['Letter from the President']
  "Our House": ['Location', 'Amenities', 'Rooms']
  "Rush!": ['Overview', 'Schedule', 'FAQ']
  "Life at ADPhi": ['Culture', 'Academics', 'Activities', 'Snapchat Hall of Fame']
  "Meet the Brothers": ['Wolfpack', 'Muses', 'Atlas', 'Celeritas/Pendulum', 'Alumni']

docpadConfig = {
  templateData:
    site:
      title: "MIT ADPhi"
    getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
  plugins:
    markit:
        html: true
        linkify: true
        typographer: true
        langPrefix: 'language-en'
        plugins: ['markdown-it-footnote']
        markdown_it_footnote: {footnote_block_open: 'Footnotes:'}
    imagin:
      presets:
        'brother':
          w: 400
          h: 400
      imageMagick: true
}

# Export the DocPad Configuration
module.exports = docpadConfig
