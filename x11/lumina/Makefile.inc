# $OpenBSD: Makefile.inc,v 1.1 2015/08/12 06:26:34 ajacoutot Exp $

V=			0.8.6
GH_ACCOUNT=		pcbsd
GH_TAGNAME=		v${V}-Release
DISTNAME=		${GH_PROJECT}-${V}

CATEGORIES ?=		x11 x11/lumina

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
