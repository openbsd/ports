# $OpenBSD: Makefile.inc,v 1.7 2016/08/20 12:57:18 ajacoutot Exp $

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

MAINTAINER=		Bryan C. Everly <bryan@bceassociates.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
