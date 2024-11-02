export default [
  {
    ignores: ["node_modules"], // Ignore the node_modules folder
  },
  {
    files: ["**/*.js"], // Lint all JavaScript files
    languageOptions: {
      ecmaVersion: "latest", // Use the latest ECMAScript standard
      sourceType: "module",  // Support ES modules
    },
    rules: {
      "no-unused-vars": "warn", // Warn about unused variables
      "no-console": "off",      // Allow console statements
      "semi": ["error", "always"], // Enforce semicolons
      "quotes": ["error", "single"] // Enforce single quotes
    },
  },
];
