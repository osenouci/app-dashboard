module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '3c7a2251f2235b1f988597835a22d137'),
  },
});
