# $OpenBSD: Makefile.inc,v 1.4 2016/02/27 12:41:11 ajacoutot Exp $

V=			0.8.8
GH_ACCOUNT=		pcbsd
GH_TAGNAME=		v${V}-Release
DISTNAME=		${GH_PROJECT}-${V}
HOMEPAGE=		http://lumina-desktop.org/

CATEGORIES ?=		x11 x11/lumina

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST=		Yes
