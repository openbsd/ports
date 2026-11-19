PHP_VERSION=	8.3.37

# keep above 8.0-stable
REVISION=	0

AUTOCONF_VERSION= 2.73

PHP_PKGSPEC=	>=8.3,<8.4
PHP_EXTENSIONS=	-imap -pspell
ZEND_EXTENSIONS= -opcache
CONFIGURE_ARGS=	--enable-opcache \
		--with-pic

.include <bsd.port.mk>
