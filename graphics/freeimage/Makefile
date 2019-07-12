# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:58 sthen Exp $

COMMENT=		c++ library for common image format

DISTNAME=		FreeImage3152
PKGNAME=		freeimage-3.15.2
REVISION=		7
CATEGORIES=		graphics

SHARED_LIBS+=		freeimage	2.0

HOMEPAGE=		http://freeimage.sourceforge.net/

# GPL / "FreeImage Public Nons^WLicense"
PERMIT_PACKAGE=	Yes

WANTLIB=		${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=freeimage/}
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/FreeImage

USE_GMAKE=		Yes

MAKE_ENV=		LIBfreeimage_VERSION=${LIBfreeimage_VERSION} \
			CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"
MAKE_TARGET=		Makefile.gnu

post-extract:
	perl -pi -e 's/\015//g' ${WRKSRC}/Makefile.gnu \
				${WRKSRC}/TestAPI/Makefile

do-test:
	cd ${WRKSRC}/TestAPI && ${MAKE_PROGRAM} ${MAKE_ENV}

.include <bsd.port.mk>
