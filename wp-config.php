<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_eclipse-template');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '/=E(L#GPktW?i f 9X3BPknW(dn[2cY5[vlsBY8.tdn[IvgDAkuAFl :.d17yEUF');
define('SECURE_AUTH_KEY',  'g*>%erkU(%OzvB#Ud)/[%Y.@F+`OG{:ep=I}?VI<o8M)|SK7vjT>*0$B_f%fbw>)');
define('LOGGED_IN_KEY',    '=>c*WvETl6a>#_@xT@75Q d -h|S9z=9tU!IfamQy|L][JzYYHV9LgB;f|~ w]y=');
define('NONCE_KEY',        '>:^Ul+8G7?[de($v%b `x|?RIWK>9&Vp&)q#$-jOs?E^M9e48:bunX}XSSLt&ZB<');
define('AUTH_SALT',        'U<.hJq.y}dwas/-|3>+?<nmYrTEW<p$I?bpY^r ho f1v9lO:B=!qlEMV`:(sCO+');
define('SECURE_AUTH_SALT', '(m09 R(5QP1T.0^`WVy(<=7u+%bP|R/SOb0d/]2jW{+uMn^q#w26A5npaPe)-.cq');
define('LOGGED_IN_SALT',   '(L.~J.41vi`[|_%YDwhy#OUfR0V@y</ptXy%5b-;>r}bNW$V*S:YI 07G$3D[+pS');
define('NONCE_SALT',       'yC|zo&btB+X?{B<YQPtKaStoOO9or(`rw0B(MmIH(Q,??e+l]o=7 ^[y8Wc$rI_)');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
