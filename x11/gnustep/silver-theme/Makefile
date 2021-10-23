# $OpenBSD: Makefile,v 1.13 2021/10/19 19:43:38 sebastia Exp $

COMMENT =	GNUstep theme with silvered controls

V =		3.1
REVISION =	11
DISTNAME =	Silver.theme-${V}
PKGNAME =	gnustep-silver-theme-${V}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Silver.theme
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

# GPLv3

MODULES =		x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
MODGNUSTEP_NEEDS_C =	No

.include <bsd.port.mk>
