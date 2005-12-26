# $OpenBSD: Makefile,v 1.14 2005/12/26 15:07:55 steven Exp $

COMMENT=	"Multiple-image Network Graphics (MNG) reference library"

DISTNAME=	lm1009
PKGNAME=	libmng-1.0.9p1
SHARED_LIBS=	mng	3.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libmng/}
EXTRACT_SUFX=	.zip
UNZIP=		unzip -a

HOMEPAGE=	http://www.libmng.com/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		lcms::graphics/lcms

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

SHLIB_MAJOR=	${LIBmng_VERSION:R}
SHLIB_MINOR=	${LIBmng_VERSION:E}

MAKE_ENV=	CC="${CC}" \
		SHLIB_MAJOR=${SHLIB_MAJOR} SHLIB_MINOR=${SHLIB_MINOR}
MAKE_FILE=	makefiles/makefile.openbsd

WRKDIST=	${WRKDIR}/libmng

NO_REGRESS=	Yes

post-extract:
	@cp -f ${FILESDIR}/makefile.openbsd ${WRKSRC}/makefiles

.include <bsd.port.mk>
