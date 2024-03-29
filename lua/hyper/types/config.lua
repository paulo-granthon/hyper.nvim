---@class Config
---@field colors? table<string, string> | string The colors to use for the theme.
---Value can be a table of colors or a string pointing to a module that returns a table of colors.
---Colors are pairs of name and hex value and are used to generate the palette.
---@field highlights? table<string, HighlightData> | string The highlight groups to use for the theme.
---Value can be a table of colors or a string pointing to a module that returns a table of highlight groups.
---The highlights table defines the Highlights that are applied by NeoVim.
---@field color_overrides? table<string, string> The colors to override or add.
---Add colors by declaring a new pair of name and hex value.
---Override colors by declaring a pair of name and hex value with the same name as an existing color.
---@field highlights_overrides? table<string, HighlightData> The highlight groups to override.
---Add highlight groups by declaring a new pair of name and palette.
---Override highlight groups by declaring a pair of name and palette with the same name as an existing highlight group.
