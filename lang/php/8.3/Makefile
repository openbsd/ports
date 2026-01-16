PHP_VERSION=	8.3.30
AUTOCONF_VERSION= 2.71

DEFAULT_PHP=	Yes

PHP_PKGSPEC=	>=8.3,<8.4
PHP_EXTENSIONS=	-imap -pspell
ZEND_EXTENSIONS= -opcache
CONFIGURE_ARGS=	--enable-opcache
# for -embed
BUILD_DEPENDS=	devel/capstone/main

.include <bsd.port.mk>
