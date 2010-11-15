# $OpenBSD: Makefile,v 1.5 2010/11/15 20:21:01 espie Exp $

VERSION =	2.64

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS =${WRKSRC}/build-aux
MAKE_FLAGS =		EMACS=no
FAKE_FLAGS =		EMACS=no
REGRESS_DEPENDS =	devel/automake/1.9
REGRESS_FLAGS +=	AUTOMAKE_VERSION=1.9

.include <bsd.port.mk>
