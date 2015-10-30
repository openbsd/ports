# $OpenBSD: Makefile.inc,v 1.2 2015/10/30 22:40:53 ajacoutot Exp $

V=			0.8.7
GH_ACCOUNT=		pcbsd
GH_TAGNAME=		v${V}-Release
DISTNAME=		${GH_PROJECT}-${V}

CATEGORIES ?=		x11 x11/lumina

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
