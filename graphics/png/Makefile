# $OpenBSD: Makefile,v 1.13 2000/02/12 06:29:55 turan Exp $

DISTNAME=       libpng-1.0.3
PKGNAME=        png-1.0.3
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/

NEED_VERSION=	1.64

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

post-extract:
	@chmod +w ${WRKSRC}/scripts

pre-patch:
	@cp ${WRKSRC}/scripts/makefile.std $(WRKSRC)/Makefile

# post-patch must be defined before bsd.port.mk is included so it will
# be called.  However, we need to have the body of the target after
# bsd.port.mk is included so NO_SHARED_LIBS is defined.
# Define the target twice, using :
post-patch:

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/png
	cd ${WRKSRC}; ${INSTALL_MAN} libpng.3 libpngpf.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/png.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/libpng.txt ${PREFIX}/share/doc/png
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
post-patch:
.if defined(NO_SHARED_LIBS)
	@cd ${DISTDIR}; patch ${PATCH_DIST_ARGS} < ${FILESDIR}/patch
.endif
