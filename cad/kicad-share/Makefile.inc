# $OpenBSD: Makefile.inc,v 1.8 2021/11/13 13:12:31 jca Exp $

NOT_FOR_ARCHS =		powerpc riscv64

PKG_ARCH ?=		*

V ?=			5.1.10
EXTRACT_SUFX ?=		.tar.bz2

DISTNAME=		kicad-${KICAD_PROJECT}-$V

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

MASTER_SITES ?=	\
	https://gitlab.com/kicad/libraries/kicad-${KICAD_PROJECT}/-/archive/$V/

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake
