defmodule Scenic.Primitive.Style.Paint.ColorTest do
  use ExUnit.Case, async: true

  import Scenic.Primitive.Style.Paint.Color

  test "to_rgba with numbers" do
    assert to_rgba({1, 2, 3}) == {1, 2, 3, 0xFF}
    assert to_rgba({1, 2, 3, 4}) == {1, 2, 3, 4}
  end

  test "to_rgba/1" do
    assert to_rgba({:transparent, nil}) == to_rgba(:transparent)
    assert to_rgba({:clear, nil}) == to_rgba(:transparent)
    assert to_rgba(<<255, 255, 255, 255>>) == to_rgba(:white)
  end

  test "name_to_rgb/1" do
    assert name_to_rgb(:alice_blue) == {0xF0, 0xF8, 0xFF}
    assert name_to_rgb(:antique_white) == {0xFA, 0xEB, 0xD7}
    assert name_to_rgb(:aqua) == {0x00, 0xFF, 0xFF}
    assert name_to_rgb(:aquamarine) == {0x7F, 0xFF, 0xD4}
    assert name_to_rgb(:azure) == {0xF0, 0xFF, 0xFF}
    assert name_to_rgb(:beige) == {0xF5, 0xF5, 0xDC}
    assert name_to_rgb(:bisque) == {0xFF, 0xE4, 0xC4}
    assert name_to_rgb(:black) == {0x00, 0x00, 0x00}
    assert name_to_rgb(:blanched_almond) == {0xFF, 0xEB, 0xCD}
    assert name_to_rgb(:blue) == {0x00, 0x00, 0xFF}
    assert name_to_rgb(:blue_violet) == {0x8A, 0x2B, 0xE2}
    assert name_to_rgb(:brown) == {0xA5, 0x2A, 0x2A}
    assert name_to_rgb(:burly_wood) == {0xDE, 0xB8, 0x87}
    assert name_to_rgb(:cadet_blue) == {0x5F, 0x9E, 0xA0}
    assert name_to_rgb(:chartreuse) == {0x7F, 0xFF, 0x00}
    assert name_to_rgb(:chocolate) == {0xD2, 0x69, 0x1E}
    assert name_to_rgb(:coral) == {0xFF, 0x7F, 0x50}
    assert name_to_rgb(:cornflower_blue) == {0x64, 0x95, 0xED}
    assert name_to_rgb(:cornsilk) == {0xFF, 0xF8, 0xDC}
    assert name_to_rgb(:crimson) == {0xDC, 0x14, 0x3C}
    assert name_to_rgb(:cyan) == {0x00, 0xFF, 0xFF}
    assert name_to_rgb(:dark_blue) == {0x00, 0x00, 0x8B}
    assert name_to_rgb(:dark_cyan) == {0x00, 0x8B, 0x8B}
    assert name_to_rgb(:dark_golden_rod) == {0xB8, 0x86, 0x0B}
    assert name_to_rgb(:dark_gray) == {0xA9, 0xA9, 0xA9}
    assert name_to_rgb(:dark_grey) == {0xA9, 0xA9, 0xA9}
    assert name_to_rgb(:dark_green) == {0x00, 0x64, 0x00}
    assert name_to_rgb(:dark_khaki) == {0xBD, 0xB7, 0x6B}
    assert name_to_rgb(:dark_magenta) == {0x8B, 0x00, 0x8B}
    assert name_to_rgb(:dark_olive_green) == {0x55, 0x6B, 0x2F}
    assert name_to_rgb(:dark_orange) == {0xFF, 0x8C, 0x00}
    assert name_to_rgb(:dark_orchid) == {0x99, 0x32, 0xCC}
    assert name_to_rgb(:dark_red) == {0x8B, 0x00, 0x00}
    assert name_to_rgb(:dark_salmon) == {0xE9, 0x96, 0x7A}
    assert name_to_rgb(:dark_sea_green) == {0x8F, 0xBC, 0x8F}
    assert name_to_rgb(:dark_slate_blue) == {0x48, 0x3D, 0x8B}
    assert name_to_rgb(:dark_slate_gray) == {0x2F, 0x4F, 0x4F}
    assert name_to_rgb(:dark_slate_grey) == {0x2F, 0x4F, 0x4F}
    assert name_to_rgb(:dark_turquoise) == {0x00, 0xCE, 0xD1}
    assert name_to_rgb(:dark_violet) == {0x94, 0x00, 0xD3}
    assert name_to_rgb(:deep_pink) == {0xFF, 0x14, 0x93}
    assert name_to_rgb(:deep_sky_blue) == {0x00, 0xBF, 0xFF}
    assert name_to_rgb(:dim_gray) == {0x69, 0x69, 0x69}
    assert name_to_rgb(:dim_grey) == {0x69, 0x69, 0x69}
    assert name_to_rgb(:dodger_blue) == {0x1E, 0x90, 0xFF}
    assert name_to_rgb(:fire_brick) == {0xB2, 0x22, 0x22}
    assert name_to_rgb(:floral_white) == {0xFF, 0xFA, 0xF0}
    assert name_to_rgb(:forest_green) == {0x22, 0x8B, 0x22}
    assert name_to_rgb(:fuchsia) == {0xFF, 0x00, 0xFF}
    assert name_to_rgb(:gainsboro) == {0xDC, 0xDC, 0xDC}
    assert name_to_rgb(:ghost_white) == {0xF8, 0xF8, 0xFF}
    assert name_to_rgb(:gold) == {0xFF, 0xD7, 0x00}
    assert name_to_rgb(:golden_rod) == {0xDA, 0xA5, 0x20}
    assert name_to_rgb(:gray) == {0x80, 0x80, 0x80}
    assert name_to_rgb(:grey) == {0x80, 0x80, 0x80}
    assert name_to_rgb(:green) == {0x00, 0x80, 0x00}
    assert name_to_rgb(:green_yellow) == {0xAD, 0xFF, 0x2F}
    assert name_to_rgb(:honey_dew) == {0xF0, 0xFF, 0xF0}
    assert name_to_rgb(:hot_pink) == {0xFF, 0x69, 0xB4}
    assert name_to_rgb(:indian_red) == {0xCD, 0x5C, 0x5C}
    assert name_to_rgb(:indigo) == {0x4B, 0x00, 0x82}
    assert name_to_rgb(:ivory) == {0xFF, 0xFF, 0xF0}
    assert name_to_rgb(:khaki) == {0xF0, 0xE6, 0x8C}
    assert name_to_rgb(:lavender) == {0xE6, 0xE6, 0xFA}
    assert name_to_rgb(:lavender_blush) == {0xFF, 0xF0, 0xF5}
    assert name_to_rgb(:lawn_green) == {0x7C, 0xFC, 0x00}
    assert name_to_rgb(:lemon_chiffon) == {0xFF, 0xFA, 0xCD}
    assert name_to_rgb(:light_blue) == {0xAD, 0xD8, 0xE6}
    assert name_to_rgb(:light_coral) == {0xF0, 0x80, 0x80}
    assert name_to_rgb(:light_cyan) == {0xE0, 0xFF, 0xFF}
    assert name_to_rgb(:light_golden_rod_yellow) == {0xFA, 0xFA, 0xD2}
    assert name_to_rgb(:light_gray) == {0xD3, 0xD3, 0xD3}
    assert name_to_rgb(:light_grey) == {0xD3, 0xD3, 0xD3}
    assert name_to_rgb(:light_green) == {0x90, 0xEE, 0x90}
    assert name_to_rgb(:light_pink) == {0xFF, 0xB6, 0xC1}
    assert name_to_rgb(:light_salmon) == {0xFF, 0xA0, 0x7A}
    assert name_to_rgb(:light_sea_green) == {0x20, 0xB2, 0xAA}
    assert name_to_rgb(:light_sky_blue) == {0x87, 0xCE, 0xFA}
    assert name_to_rgb(:light_slate_gray) == {0x77, 0x88, 0x99}
    assert name_to_rgb(:light_slate_grey) == {0x77, 0x88, 0x99}
    assert name_to_rgb(:light_steel_blue) == {0xB0, 0xC4, 0xDE}
    assert name_to_rgb(:light_yellow) == {0xFF, 0xFF, 0xE0}
    assert name_to_rgb(:lime) == {0x00, 0xFF, 0x00}
    assert name_to_rgb(:lime_green) == {0x32, 0xCD, 0x32}
    assert name_to_rgb(:linen) == {0xFA, 0xF0, 0xE6}
    assert name_to_rgb(:magenta) == {0xFF, 0x00, 0xFF}
    assert name_to_rgb(:maroon) == {0x80, 0x00, 0x00}
    assert name_to_rgb(:medium_aqua_marine) == {0x66, 0xCD, 0xAA}
    assert name_to_rgb(:medium_blue) == {0x00, 0x00, 0xCD}
    assert name_to_rgb(:medium_orchid) == {0xBA, 0x55, 0xD3}
    assert name_to_rgb(:medium_purple) == {0x93, 0x70, 0xDB}
    assert name_to_rgb(:medium_sea_green) == {0x3C, 0xB3, 0x71}
    assert name_to_rgb(:medium_slate_blue) == {0x7B, 0x68, 0xEE}
    assert name_to_rgb(:medium_spring_green) == {0x00, 0xFA, 0x9A}
    assert name_to_rgb(:medium_turquoise) == {0x48, 0xD1, 0xCC}
    assert name_to_rgb(:medium_violet_red) == {0xC7, 0x15, 0x85}
    assert name_to_rgb(:midnight_blue) == {0x19, 0x19, 0x70}
    assert name_to_rgb(:mint_cream) == {0xF5, 0xFF, 0xFA}
    assert name_to_rgb(:misty_rose) == {0xFF, 0xE4, 0xE1}
    assert name_to_rgb(:moccasin) == {0xFF, 0xE4, 0xB5}
    assert name_to_rgb(:navajo_white) == {0xFF, 0xDE, 0xAD}
    assert name_to_rgb(:navy) == {0x00, 0x00, 0x80}
    assert name_to_rgb(:old_lace) == {0xFD, 0xF5, 0xE6}
    assert name_to_rgb(:olive) == {0x80, 0x80, 0x00}
    assert name_to_rgb(:olive_drab) == {0x6B, 0x8E, 0x23}
    assert name_to_rgb(:orange) == {0xFF, 0xA5, 0x00}
    assert name_to_rgb(:orange_red) == {0xFF, 0x45, 0x00}
    assert name_to_rgb(:orchid) == {0xDA, 0x70, 0xD6}
    assert name_to_rgb(:pale_golden_rod) == {0xEE, 0xE8, 0xAA}
    assert name_to_rgb(:pale_green) == {0x98, 0xFB, 0x98}
    assert name_to_rgb(:pale_turquoise) == {0xAF, 0xEE, 0xEE}
    assert name_to_rgb(:pale_violet_red) == {0xDB, 0x70, 0x93}
    assert name_to_rgb(:papaya_whip) == {0xFF, 0xEF, 0xD5}
    assert name_to_rgb(:peach_puff) == {0xFF, 0xDA, 0xB9}
    assert name_to_rgb(:peru) == {0xCD, 0x85, 0x3F}
    assert name_to_rgb(:pink) == {0xFF, 0xC0, 0xCB}
    assert name_to_rgb(:plum) == {0xDD, 0xA0, 0xDD}
    assert name_to_rgb(:powder_blue) == {0xB0, 0xE0, 0xE6}
    assert name_to_rgb(:purple) == {0x80, 0x00, 0x80}
    assert name_to_rgb(:rebecca_purple) == {0x66, 0x33, 0x99}
    assert name_to_rgb(:red) == {0xFF, 0x00, 0x00}
    assert name_to_rgb(:rosy_brown) == {0xBC, 0x8F, 0x8F}
    assert name_to_rgb(:royal_blue) == {0x41, 0x69, 0xE1}
    assert name_to_rgb(:saddle_brown) == {0x8B, 0x45, 0x13}
    assert name_to_rgb(:salmon) == {0xFA, 0x80, 0x72}
    assert name_to_rgb(:sandy_brown) == {0xF4, 0xA4, 0x60}
    assert name_to_rgb(:sea_green) == {0x2E, 0x8B, 0x57}
    assert name_to_rgb(:sea_shell) == {0xFF, 0xF5, 0xEE}
    assert name_to_rgb(:sienna) == {0xA0, 0x52, 0x2D}
    assert name_to_rgb(:silver) == {0xC0, 0xC0, 0xC0}
    assert name_to_rgb(:sky_blue) == {0x87, 0xCE, 0xEB}
    assert name_to_rgb(:slate_blue) == {0x6A, 0x5A, 0xCD}
    assert name_to_rgb(:slate_gray) == {0x70, 0x80, 0x90}
    assert name_to_rgb(:slate_grey) == {0x70, 0x80, 0x90}
    assert name_to_rgb(:snow) == {0xFF, 0xFA, 0xFA}
    assert name_to_rgb(:spring_green) == {0x00, 0xFF, 0x7F}
    assert name_to_rgb(:steel_blue) == {0x46, 0x82, 0xB4}
    assert name_to_rgb(:tan) == {0xD2, 0xB4, 0x8C}
    assert name_to_rgb(:teal) == {0x00, 0x80, 0x80}
    assert name_to_rgb(:thistle) == {0xD8, 0xBF, 0xD8}
    assert name_to_rgb(:tomato) == {0xFF, 0x63, 0x47}
    assert name_to_rgb(:turquoise) == {0x40, 0xE0, 0xD0}
    assert name_to_rgb(:violet) == {0xEE, 0x82, 0xEE}
    assert name_to_rgb(:wheat) == {0xF5, 0xDE, 0xB3}
    assert name_to_rgb(:white) == {0xFF, 0xFF, 0xFF}
    assert name_to_rgb(:white_smoke) == {0xF5, 0xF5, 0xF5}
    assert name_to_rgb(:yellow) == {0xFF, 0xFF, 0x00}
    assert name_to_rgb(:yellow_green) == {0x9A, 0xCD, 0x32}
  end
end
