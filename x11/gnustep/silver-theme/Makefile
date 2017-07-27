# $OpenBSD: Makefile,v 1.8 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep theme with silvered controls

V =		3.1
REVISION =	6
DISTNAME =	Silver.theme-${V}
PKGNAME =	gnustep-silver-theme-${V}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Silver.theme
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

# GPLv3

MODULES =		x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
MODGNUSTEP_NEEDS_C =	No

.include <bsd.port.mk>
