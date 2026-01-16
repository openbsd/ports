PHP_VERSION=	8.2.30
AUTOCONF_VERSION= 2.72

PHP_PKGSPEC=	>=8.2,<8.3
PHP_EXTENSIONS=	-imap -pspell
ZEND_EXTENSIONS= -opcache
CONFIGURE_ARGS=	--enable-opcache
# for -embed
BUILD_DEPENDS=	devel/capstone/main

.include <bsd.port.mk>
