# $OpenBSD: Makefile,v 1.2 2014/09/16 10:46:22 sthen Exp $

COMMENT=	library and tools to modify and parse PDF documents

# note, this is not the latest; 0.9.3 does not build on OpenBSD as-is
DISTNAME=	podofo-0.9.2

SHARED_LIBS +=	podofo                    0.0 # 0.9

CATEGORIES=	textproc

HOMEPAGE=	http://podofo.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+ (tools) LGPLv2+ (lib)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto fontconfig freetype idn jpeg m png pthread
WANTLIB += stdc++ tiff z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=podofo/}

MODULES=	devel/cmake

LIB_DEPENDS=	devel/libidn \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ARGS+=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2 \
			-DPODOFO_BUILD_STATIC=True

post-extract:
	rm ${WRKSRC}/cmake/modules/FindZLIB.cmake

NO_TEST=	Yes
# there are various cppunit-based tests (which must be installed during
# configure), podofo-test is easy to run, but there's no framework to
# automatically run the others.
#
#BUILD_DEPENDS=	devel/cppunit
#do-test:
#	${WRKBUILD}/test/unit/podofo-test

.include <bsd.port.arch.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	-DPODOFO_BUILD_SHARED=False
.else
CONFIGURE_ARGS+=	-DPODOFO_BUILD_SHARED=True
.endif

.include <bsd.port.mk>
