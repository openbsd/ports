# $OpenBSD: Makefile,v 1.11 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	GNUstep theme with silvered controls

V =		3.1
REVISION =	9
DISTNAME =	Silver.theme-${V}
PKGNAME =	gnustep-silver-theme-${V}

HOMEPAGE =	http://wiki.gnustep.org/index.php/Silver.theme
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

# GPLv3

MODULES =		x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
MODGNUSTEP_NEEDS_C =	No

.include <bsd.port.mk>
