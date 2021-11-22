# $OpenBSD: Makefile.inc,v 1.9 2021/11/22 14:55:53 tracey Exp $

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			5.1.12
EXTRACT_SUFX ?=		.tar.bz2

DISTNAME=		kicad-${KICAD_PROJECT}-$V

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

MASTER_SITES ?=	\
	https://gitlab.com/kicad/libraries/kicad-${KICAD_PROJECT}/-/archive/$V/

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake

NO_TEST =		Yes
