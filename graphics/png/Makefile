# $OpenBSD: Makefile,v 1.29 2001/03/25 17:32:23 brad Exp $

COMMENT=	"library for manipulating PNG images"

DISTNAME=	libpng-1.0.9
PKGNAME=	png-1.0.9
CATEGORIES=	graphics
NEED_VERSION=	1.363
MASTER_SITES=	ftp://ftp.libpng.org/pub/png/src/ \
		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= libpng

HOMEPAGE=	http://www.libpng.org/pub/png/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="-L. -lpng -lz -lm"
FAKE_FLAGS+=	${MAKE_FLAGS} prefix="${PREFIX}"

MAKE_FILE=	scripts/makefile.std

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/png
	cd ${WRKSRC}; ${INSTALL_MAN} libpng.3 libpngpf.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/png.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/libpng.txt ${PREFIX}/share/doc/png

test:	build
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} test

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
