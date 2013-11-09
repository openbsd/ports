# $OpenBSD: Makefile,v 1.11 2013/11/09 23:19:02 naddy Exp $

VERSION =	2.60
REVISION =	4

BUILD_DEPENDS =		devel/help2man

CONFIGURE_ARGS +=	--without-lispdir \
			--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
MAKE_FLAGS +=		EMACS=no
FAKE_FLAGS +=		EMACS=no

.include <bsd.port.mk>
