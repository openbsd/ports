# $OpenBSD: Makefile,v 1.10 2010/11/15 20:21:01 espie Exp $

VERSION =	2.60
REVISION =	3

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
MAKE_FLAGS +=		EMACS=no
FAKE_FLAGS +=		EMACS=no

.include <bsd.port.mk>
