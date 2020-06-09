# $OpenBSD: Makefile.inc,v 1.5 2020/06/09 17:09:24 cwen Exp $

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			5.1.5

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

GH_ACCOUNT ?=		KiCad
GH_PROJECT ?=		kicad-${KICAD_PROJECT}
GH_TAGNAME ?=		$V

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake
