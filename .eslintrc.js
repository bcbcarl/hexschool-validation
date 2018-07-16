module.exports = {
  "extends": [
    "airbnb",
    "plugin:prettier/recommended",
    "prettier/react"
  ],
  "env": {
    "browser": true
  },
  "plugins": [
    "compat",
    "prettier"
  ],
  "rules": {
    "compat/compat": "error",
    "prettier/prettier": "error",
    "react/jsx-filename-extension": "off",
    "react/prop-types": "off",
    "comma-dangle": ["error", "never"]
  }
};
