# $OpenBSD: Makefile,v 1.1.1.1 2012/06/01 07:30:46 jasper Exp $

VERSION =	2.69

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/build-aux
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no
REGRESS_DEPENDS =	devel/automake/1.11
REGRESS_FLAGS +=	AUTOMAKE_VERSION=1.11

.include <bsd.port.mk>
