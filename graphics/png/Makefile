# $OpenBSD: Makefile,v 1.17 2000/05/16 18:49:39 espie Exp $

DISTNAME=       libpng-1.0.3
PKGNAME=        png-1.0.3
CATEGORIES=     graphics
NEED_VERSION=	1.223
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/


MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

post-extract:
	@chmod +w ${WRKSRC}/scripts

pre-patch:
	@cd ${WRKSRC} && cp scripts/makefile.std Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/png
	cd ${WRKSRC}; ${INSTALL_MAN} libpng.3 libpngpf.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/png.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/libpng.txt ${PREFIX}/share/doc/png

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
.if defined(NO_SHARED_LIBS)
PATCH_LIST+=noshared-patch
.endif
