# $OpenBSD: Makefile,v 1.1 2011/04/15 09:46:31 sthen Exp $

VERSION =	2.67

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
