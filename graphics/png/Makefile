# $OpenBSD: Makefile,v 1.22 2000/06/28 17:22:52 brad Exp $

DISTNAME=	libpng-1.0.6
PKGNAME=	png-1.0.6
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.uu.net/graphics/png/src/

PATCHFILES=	libpng-1.0.6-patch-a.txt.gz \
		libpng-1.0.6-patch-b.txt.gz \
		libpng-1.0.6-patch-c.txt.gz

HOMEPAGE=	http://www.libpng.org/pub/png/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="libpng.la -lz -lm"

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
