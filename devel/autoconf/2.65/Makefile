# $OpenBSD: Makefile,v 1.6 2011/01/19 08:49:53 landry Exp $

VERSION =	2.65
BROKEN =	relies on GNU m4 behaviour that /usr/bin/m4 does not yet handle
# look for, in particular, extra _ chars. likely to be a problem
# with translit(). you can add this hack to a port Makefile to use
# GNU m4 to generate the script so you can compare behaviour:
# AUTOCONF= M4=${LOCALBASE}/bin/gm4 autoconf

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
