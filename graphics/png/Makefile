# $OpenBSD: Makefile,v 1.10 1999/05/09 07:24:21 brad Exp $

DISTNAME=       libpng-1.0.3
PKGNAME=        png-1.0.3
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/

NEED_VERSION=	1.64

MAINTAINER=     angelos@openbsd.org

post-extract:
	@chmod +w ${WRKSRC}/scripts

pre-patch:
	cp ${WRKSRC}/scripts/makefile.std $(WRKSRC)/Makefile

# post-patch must be defined before bsd.port.mk is included so it will
# be called.  However, we need to have the body of the target after
# bsd.port.mk is included so NO_SHARED_LIBS is defined.
# Define the target twice, using :
post-patch:

post-install:
	${INSTALL_MAN} ${WRKSRC}/libpng.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/libpngpf.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/png.5 ${PREFIX}/man/man5
	${MKDIR} ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/png
	${INSTALL_DATA} ${WRKSRC}/libpng.txt ${PREFIX}/share/doc/png
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# The patches assumed shared libs would be build.  If building
# on a host that does not support shared libs, e.g. the alpha,
# apply one more patch.
post-patch:
.if defined(NO_SHARED_LIBS)
	@(cd ${DISTDIR}; ${PATCH} ${PATCH_DIST_ARGS} < ${FILESDIR}/patch)
.endif
