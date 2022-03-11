COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-1.3
REVISION=	1

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	security/libssh2

# various TEST_SSH2_* can be passed to tests in TEST_ENV (username, host, etc)
# - see tests/ssh2_test.inc. Needs allow_url_fopen=on and may need sshd ciphers/
# kex/hmac opening up if you have restrictive settings.

.include <bsd.port.mk>
