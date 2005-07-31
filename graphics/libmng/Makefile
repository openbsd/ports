# $OpenBSD: Makefile,v 1.11 2005/07/31 23:19:17 brad Exp $

COMMENT=	"Multiple-image Network Graphics (MNG) reference library"

DISTNAME=	libmng-1.0.9
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libmng/}

HOMEPAGE=	http://www.libmng.com/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		lcms::graphics/lcms

MAINTAINER=	Brad Smith <brad@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	makefiles/makefile.openbsd

NO_REGRESS=	Yes

post-extract:
	@cp -f ${FILESDIR}/makefile.openbsd ${WRKSRC}/makefiles

.include <bsd.port.mk>
