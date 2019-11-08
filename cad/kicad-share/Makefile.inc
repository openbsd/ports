# $OpenBSD: Makefile.inc,v 1.2 2019/11/08 14:17:48 sthen Exp $

PKG_ARCH ?=		*

V ?=			5.1.4
DISTNAME ?=		kicad-${KICAD_PROJECT:C/^kicad-//}-$V

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

GH_ACCOUNT ?=		KiCad
GH_PROJECT ?=		${KICAD_PROJECT}
GH_TAGNAME ?=		$V

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake

WRKSRC ?=		${WRKDIR}/kicad-${KICAD_PROJECT}-$V
