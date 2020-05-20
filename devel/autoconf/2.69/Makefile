# $OpenBSD: Makefile,v 1.6 2020/05/20 20:05:52 sthen Exp $

VERSION =	2.69
REVISION =	3

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/build-aux
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no
TEST_DEPENDS =	devel/automake/1.11
TEST_FLAGS +=	AUTOMAKE_VERSION=1.11

.include <bsd.port.mk>
