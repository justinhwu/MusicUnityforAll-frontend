# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_26_151649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playlist_songs", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.string "description", default: ""
    t.string "image", default: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAA81BMVEX////v7+8ga6onh9+amprkpiXrtwbz8/OWlpY/keEPZ6nm6uzy9/2UlJQIgd6Trs6VvOyYsMyjxO4AW6Pm5uahoaHNzc0AfNy3t7fb29vU1NTv8fTr0J7koxKysrL347LBwcF1m8JnpeYwc64lb6z0ugBEjcbqsgBXeZH46MX457vioAD++/Lh4eGMjIwAZ6/t38T99+j89ej014/03rj78NT23qOVjmsAWKzz04EAUp//99TppwDxznDuyILtxG/x0ZflqzO+ql/FnUbUsDjs2K7u6d3935N3l6nGrFChkGUzitDWpCxIdpYzcZ/itRdvgYXZXuyVAAAEF0lEQVR4nO3daVvaQBSGYdkCUsGlSAsapa00RRC0At1oXWpXtfr/f02BRFphlkxkzMzhvb/xiTwNZOYkeHVpCQAAAAAAAAAAAAAAAGhqNU5PTo73W3Efhy6tL27TdV3H8z4fxX0sWnSbbmbEGfL6cR+NBv1mJjMpdLwPcR/P3DWCQLfpeePE3biPaM5aAz/wrHvU2vfPIrHrzbH/HTwbv2hR/Jz6Z7B56L/qjz+o8R7RnPX8b6EbfDJ7o0KP1JLRYBU24j2m+QoKm13/5fG4cD/eY5qvyVrxdvSq568XJAsz7nav13ccwoWTFZ9uYbBrI1d4NGAUfor7qHhWPj5V9v6dO1PoPFOSesTCfDKUTufPm4nrq5nC88vXgctisZiSWTatML/3+2rwn9lPqVOfcH79lCaaVti5zfz7XN7nsNQvLiWNhhV2bgecPk6hU7+RJJpVmL/mnUBuoePcLJtXmOdJnvEDuYX1C+H1JpbCFzxfBaeQW+jUz18yxFmYT2SZVk5FgfxCx/vBeLtinIVPEixb3aYoUFDIuj21Yl7h1ndxoKjQ8XoWFCZEVxlZ4ewdOPMKt75JTqGkcHrgMLDwcPRsQsQTmr49ZV7hMHFbbFfEiO/hkuxaKqH2ZiYWSmTV3gyFWqAQhUpQqAUKUagEhVqgEIVKUKgFCokWBvdKCRdWqpWhqjzR1sLsZiE31L4rZN8NH1N7M4MK0yOFoLCU3owqXbWjsJCOqlC2vjAnZklhYud5ZAemFuaoX2nKYzW6q8UCrPihoXAKCrVIki+kfw4XtJD8akF/xZ/etZX4BBs6xq7OoML7s0W7EFXbjtniAfNhzv5CKvMhn2Q83KmYWkh/PqyN0V0t6K/44dlQSH+2QCEKlaBQC2YhqdWCVRjMh2UaKz6zcGrXdsCn9k9gUCGl+TBMod3zYajCXMTx0Ij5MESh6PlhTcyE54dhrjR2z4fMwir11YL+ih+eDYV7KEShChRqsaCFpFYLVmG25t+Sp7HiMwv9XVuBxvNDdiGl+TBMod3zYahC2Rho9HwYojAhGADLEiVTCyn9kp25HlYqhP4agb2nob7ih4fCKSjUAoUoVGJOIf35cMf/yzO6e5rpfWmVT/Bo0X++aEVhqS0YHiTsmC0wH2I+NLLQv8lC91p69+ML6XJoxXr4ajH3NChEIQ8KtUAh0ULMh9bvabKbuXv7UsG+UzA6jhm7L12w2QLzof3nUPA9rFYkDLhPw5otaM2HzOkp+KGFdDm0Yj2kPx+iEIVKUKgFClGoBIVaoBCFSlCoBQpRqASFWqCQUKHofhOJO1HJ1fUoNpSspeIs5P5/wEJFNbEWRpOKBoUoRCEKUWhZYbR1MOJ6eOcxC9dXH2Qtmo1HLAQAAAAAAAAAAAAAAJi/vzEQVG0XAdcOAAAAAElFTkSuQmCC"
    t.string "genre", default: "null"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "videoId"
    t.string "title"
    t.string "publishedAt"
    t.string "channelTitle"
    t.string "description"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "birthday"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
