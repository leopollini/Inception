<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'leo' );

/** Database password */
define( 'DB_PASSWORD', 'qwerty' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_HOME', 'https://lpollini.42.fr' );
define( 'WP_SITEURL', 'https://lpollini.42.fr' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '76V9)UJ*NHW9RI KJGSYRN9 4IJRE[QF)Jhb6gHIokejtnwh pnk' );
define( 'SECURE_AUTH_KEY',  '53o06u9j83 tiOPIwumn 6hpnomtqpm9u 89JOITJ M485YJ[IAO' );
define( 'LOGGED_IN_KEY',    '0-9U83JYVHQT PFJEMU Q3Y0 4HTJIOOWEKDCMU 0JETI43J I24' );
define( 'NONCE_KEY',        '98yn 4w5hgrth 54w45wy5kjdsghnwym73htjrgkiopwerjgu45w' );
define( 'AUTH_SALT',        '87324htjirgje0,9 mg8-ujq[43te34ijhtr-94jrweklajnwf93' );
define( 'SECURE_AUTH_SALT', 'rgq8964jthjiovppao]wimf8uwl]P09UjYHUopk,90ittsrtgtta' );
define( 'LOGGED_IN_SALT',   '348t7cjoierg,sfg0er9gi9erng3kl4f98089g45njkn54bdrtgf' );
define( 'NONCE_SALT',       'fvb879yn3w5hgnjmwel;g,f0of-8934tck.09324,t2j3tj324tj' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
