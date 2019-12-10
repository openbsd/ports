# $OpenBSD: Makefile.inc,v 1.4 2019/12/10 23:09:48 sthen Exp $

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
