# $OpenBSD: Makefile,v 1.1.1.1 2014/11/21 19:04:14 jca Exp $

COMMENT=	unpack Inno Setup installers

DISTNAME=	innoextract-1.4

CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=innoextract/}

HOMEPAGE=	http://constexpr.org/innoextract/

MAINTAINER=	Donovan Watteau <tsoomi@gmail.com>

# zlib/libpng
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB+=	boost_system-mt c lzma m pthread stdc++

LIB_DEPENDS=	archivers/xz \
		devel/boost>=1.53.0p6

MODULES=	converters/libiconv devel/cmake

SEPARATE_BUILD=	Yes

CXXFLAGS+=	-Wno-system-headers
CONFIGURE_ARGS+=-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DCMAKE_INSTALL_MANDIR="man" \
		-DDOXYGEN_EXECUTABLE="false"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/innoextract ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/innoextract.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
