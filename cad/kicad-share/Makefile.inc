# keep in sync with list from cad/kicad/Makefile
BROKEN-powerpc =	segfaults when trying to run the PCB editor

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			6.0.11
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
