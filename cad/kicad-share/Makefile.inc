# $OpenBSD: Makefile.inc,v 1.6 2021/02/19 14:48:11 tracey Exp $

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			5.1.7

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

GH_ACCOUNT ?=		KiCad
GH_PROJECT ?=		kicad-${KICAD_PROJECT}
GH_TAGNAME ?=		$V

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake
