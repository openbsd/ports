# $OpenBSD: Makefile,v 1.8 2013/11/09 23:19:02 naddy Exp $

VERSION =	2.62
REVISION =	1

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/build-aux
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no

TEST_DEPENDS =	devel/automake/1.10
TEST_FLAGS +=	AUTOMAKE_VERSION=1.10

.include <bsd.port.mk>
