# $OpenBSD: Makefile.inc,v 1.6 2016/08/20 12:19:14 ajacoutot Exp $

V=			1.0.0
GH_ACCOUNT=		trueos
GH_TAGNAME=		v${V}-Release
DISTNAME=		${GH_PROJECT}-${V}
HOMEPAGE=		http://lumina-desktop.org/

.if defined(PATCHSET)
GH_TAGNAME=		v${V}-Release-p${PATCHSET}
DISTNAME=		${GH_PROJECT}-${V}.${PATCHSET}
.endif

CATEGORIES ?=		x11 x11/lumina

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
