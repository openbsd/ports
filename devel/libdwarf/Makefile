# $OpenBSD: Makefile,v 1.4 2016/09/09 12:25:07 jasper Exp $

COMMENT=		library to access the DWARF debugging file format

V=			20160613
DISTNAME=		libdwarf-${V}
WRKDIST=		${WRKDIR}/dwarf-${V}
REVISION=		1

SHARED_LIBS=		dwarf 1.0

CATEGORIES=		devel

HOMEPAGE=		https://www.prevanders.net/dwarf.html

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
