const colors = require('tailwindcss/colors')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors:{
        primary:"#282C2B",
        secondary: "#E25A29"
      },
      width:{
        "32px":"32px",
        "64px":"64px",
        "48px":"48px",
      },
    height:{
      "32px":"32px",
      "64px":"64px",
      "48px":"48px",
    },
      text:{
        "32px":"32px",
        "64px":"64px",
        "48px":"48px",
      },
      borderWidth:{
        "1":"1px"
      }
    },

  },
  variants: {
    extend: {},
  },
  plugins: [],

}
