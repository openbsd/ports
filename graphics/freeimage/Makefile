COMMENT=		c++ library for common image format

DISTNAME=		FreeImage3180
PKGNAME=		freeimage-3.18.0
CATEGORIES=		graphics
REVISION=		1

SHARED_LIBS+=		freeimage	3.0

HOMEPAGE=		http://freeimage.sourceforge.net/

# GPL / "FreeImage Public Nons^WLicense"
PERMIT_PACKAGE=	Yes

WANTLIB=		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

SITES=			${SITE_SOURCEFORGE:=freeimage/}
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/FreeImage

USE_GMAKE=		Yes

MAKE_ENV=		LIBfreeimage_VERSION=${LIBfreeimage_VERSION} \
			CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"
MAKE_TARGET=		Makefile.gnu

FIX_CRLF_FILES=		Makefile.gnu TestAPI/Makefile

# The bundled libpng ships without the source for neon support, so
# disable it to avoid undefined external references.
.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "arm"
CFLAGS +=		-DPNG_ARM_NEON_OPT=0
.endif

do-test:
	cd ${WRKSRC}/TestAPI && ${MAKE_PROGRAM} ${MAKE_ENV}

.include <bsd.port.mk>
