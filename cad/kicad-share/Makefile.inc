# keep in sync with list from cad/kicad/Makefile
BROKEN-powerpc =	segfaults when trying to run the PCB editor
BROKEN-riscv64 =	kicad-5.1.10/include/system/libcontext.h:93:36: error: expected ';' after top level declarator

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			6.0.1
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
