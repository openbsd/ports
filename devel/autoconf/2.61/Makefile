VERSION = 	2.61
REVISION =	5

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no

.include <bsd.port.mk>
