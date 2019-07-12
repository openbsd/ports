# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:02 sthen Exp $

COMMENT=	Multiple-image Network Graphics (MNG) reference library

DISTNAME=	lm010010
PKGNAME=	libmng-1.0.10
REVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libmng/}
EXTRACT_SUFX=	.zip
UNZIP=		unzip -a

SHARED_LIBS=	mng	3.1

HOMEPAGE=	http://www.libmng.com/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	jpeg lcms m z

LIB_DEPENDS=	graphics/lcms

# non shared arches...
LIB_DEPENDS +=	graphics/jpeg

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}" \
		SHLIB_MAJOR=${LIBmng_VERSION:R} \
		SHLIB_MINOR=${LIBmng_VERSION:E}
MAKE_FILE=	makefiles/makefile.openbsd

WRKDIST=	${WRKDIR}/libmng

NO_TEST=	Yes

post-extract:
	@cp -f ${FILESDIR}/makefile.openbsd ${WRKSRC}/makefiles

.include <bsd.port.mk>
