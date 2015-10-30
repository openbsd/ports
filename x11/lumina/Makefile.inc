# $OpenBSD: Makefile.inc,v 1.3 2015/10/30 22:46:16 ajacoutot Exp $

V=			0.8.7
GH_ACCOUNT=		pcbsd
GH_TAGNAME=		v${V}-Release
DISTNAME=		${GH_PROJECT}-${V}
HOMEPAGE=		http://lumina-desktop.org/

CATEGORIES ?=		x11 x11/lumina

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
