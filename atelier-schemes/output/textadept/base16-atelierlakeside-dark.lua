-- Atelier Lakeside theme for Textadept (http://foicica.com/textadept/)
-- Theme author: Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/lakeside/)
-- Base16 (https://github.com/chriskempson/base16)
-- Build with Base16 Builder (https://github.com/chriskempson/base16-builder)
-- Repository: https://github.com/rgieseke/ta-themes

local buffer = buffer
local property, property_int = buffer.property, buffer.property_int

property['color.base00'] = 0x1d1b16
property['color.base01'] = 0x2e291f
property['color.base02'] = 0x7b6d51
property['color.base03'] = 0x8c7b5a
property['color.base04'] = 0xa89571
property['color.base05'] = 0xb4a27e
property['color.base06'] = 0xf6e4c1
property['color.base07'] = 0xfff8eb
property['color.base08'] = 0x722dd2
property['color.base09'] = 0x255c93
property['color.base0A'] = 0x0f8a8a
property['color.base0B'] = 0x3b8c56
property['color.base0C'] = 0x6f8f2d
property['color.base0D'] = 0xad7f25
property['color.base0E'] = 0xb15d5d
property['color.base0F'] = 0xd22db7

-- Default font.
property['font'], property['fontsize'] = 'Bitstream Vera Sans Mono', 10
if WIN32 then
  property['font'] = 'Courier New'
elseif OSX then
  property['font'], property['fontsize'] = 'Monaco', 12
end

-- Token styles.
property['style.nothing'] = ''
property['style.class'] = 'fore:%(color.base0A)'
property['style.comment'] = 'fore:%(color.base03)'
property['style.constant'] = 'fore:%(color.base09)'
property['style.error'] = 'fore:%(color.base08),italics'
property['style.function'] = 'fore:%(color.base0E)'
property['style.keyword'] = 'fore:%(color.base0E)'
property['style.label'] = 'fore:%(color.base0A)'
property['style.number'] = 'fore:%(color.base09)'
property['style.operator'] = 'fore:%(color.base05)'
property['style.regex'] = 'fore:%(color.base0C)'
property['style.string'] = 'fore:%(color.base0B)'
property['style.preprocessor'] = 'fore:%(color.base0A)'
property['style.type'] = 'fore:%(color.base09)'
property['style.variable'] = 'fore:%(color.base08)'
property['style.whitespace'] = ''
property['style.embedded'] = 'fore:%(color.base0F),back:%(color.base01)'
property['style.identifier'] = '%(style.nothing)'

-- Predefined styles.
property['style.default'] = 'font:%(font),size:%(fontsize),'..
                            'fore:%(color.base05),back:%(color.base00)'
property['style.linenumber'] = 'fore:%(color.base02),back:%(color.base00)'
property['style.bracelight'] = 'fore:%(color.base0C),underlined'
property['style.bracebad'] = 'fore:%(color.base08)'
property['style.controlchar'] = '%(style.nothing)'
property['style.indentguide'] = 'fore:%(color.base03)'
property['style.calltip'] = 'fore:%(color.base02),back:%(color.base07)'

-- Multiple Selection and Virtual Space.
--buffer.additional_sel_alpha =
--buffer.additional_sel_fore =
--buffer.additional_sel_back =
--buffer.additional_caret_fore =

-- Caret and Selection Styles.
buffer:set_sel_fore(true, property_int['color.base00'])
buffer:set_sel_back(true, property_int['color.base05'])
--buffer.sel_alpha =
buffer.caret_fore = property_int['color.base07']
buffer.caret_line_back = property_int['color.base01']
--buffer.caret_line_back_alpha =

-- Fold Margin.
buffer:set_fold_margin_colour(true, property_int['color.base00'])
buffer:set_fold_margin_hi_colour(true, property_int['color.base00'])

-- Fold Margin Markers.
local c = _SCINTILLA.constants
buffer.marker_fore[c.SC_MARKNUM_FOLDEROPEN] = property_int['color.base04']
buffer.marker_back[c.SC_MARKNUM_FOLDEROPEN] = property_int['color.base04']
buffer.marker_fore[c.SC_MARKNUM_FOLDER] = property_int['color.base04']
buffer.marker_back[c.SC_MARKNUM_FOLDER] = property_int['color.base04']

-- Long Lines.
buffer.edge_colour = property_int['color.base01']

-- Add red and green for diff lexer.
property['color.red'] = property['color.base08']
property['color.green'] = property['color.base0B']
