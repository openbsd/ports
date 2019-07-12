# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:38 sthen Exp $
#
# Note that this may not build if an older libdwarf is already installed.

COMMENT=		library to access the DWARF debugging file format

V=			20161124
REVISION=		0
DISTNAME=		libdwarf-${V}
WRKDIST=		${WRKDIR}/dwarf-${V}

SHARED_LIBS=		dwarf 1.1

CATEGORIES=		devel

HOMEPAGE=		https://www.prevanders.net/dwarf.html

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c elf>=2 z

MASTER_SITES=		https://www.prevanders.net/

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-shared

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libdwarf/Makefile.in

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/libdwarf
	${INSTALL_DATA} ${WRKBUILD}/libdwarf/{,lib}dwarf.h \
		${PREFIX}/include/libdwarf/
	${INSTALL_DATA} ${WRKBUILD}/libdwarf/libdwarf.{a,so.${LIBdwarf_VERSION}} \
		${PREFIX}/lib/
	${INSTALL_PROGRAM} ${WRKBUILD}/dwarfdump/dwarfdump \
		${PREFIX}/bin/

.include <bsd.port.mk>
