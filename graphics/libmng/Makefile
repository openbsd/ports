# $OpenBSD: Makefile,v 1.24 2012/09/03 07:04:43 ajacoutot Exp $

COMMENT=	Multiple-image Network Graphics (MNG) reference library

DISTNAME=	lm010010
PKGNAME=	libmng-1.0.10
REVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libmng/}
EXTRACT_SUFX=	.zip
UNZIP=		unzip -a

SHARED_LIBS=	mng	3.1

HOMEPAGE=	http://www.libmng.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	jpeg lcms m z

LIB_DEPENDS=	graphics/lcms

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}" \
		SHLIB_MAJOR=${LIBmng_VERSION:R} \
		SHLIB_MINOR=${LIBmng_VERSION:E}
MAKE_FILE=	makefiles/makefile.openbsd

WRKDIST=	${WRKDIR}/libmng

NO_REGRESS=	Yes

post-extract:
	@cp -f ${FILESDIR}/makefile.openbsd ${WRKSRC}/makefiles

.include <bsd.port.mk>
