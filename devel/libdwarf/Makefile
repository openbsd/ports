# $OpenBSD: Makefile,v 1.2 2016/08/30 15:11:19 jasper Exp $

COMMENT=		library to access the DWARF debugging file format

V=			20160613
DISTNAME=		libdwarf-${V}
WRKDIST=		${WRKDIR}/dwarf-${V}

SHARED_LIBS=		dwarf 1.0

CATEGORIES=		devel

HOMEPAGE=		https://www.prevanders.net/dwarf.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c elf z

MASTER_SITES=		https://www.prevanders.net/

LIB_DEPENDS=		devel/libelf

NO_TEST=		Yes

FLAGS=			$$(pkg-config --cflags libelf)
CFLAGS=			${FLAGS}
CXXFLAGS=		${FLAGS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${FLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"
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
