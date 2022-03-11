VERSION =	2.71

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/build-aux
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no
TEST_DEPENDS =	devel/automake/1.16
TEST_FLAGS +=	AUTOMAKE_VERSION=1.16

.include <bsd.port.mk>
