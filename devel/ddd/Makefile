# $OpenBSD: Makefile,v 1.34 2002/10/13 21:45:46 naddy Exp $

COMMENT=	"Data Display Debugger, graphical front-end for GDB, etc"

DISTNAME=	ddd-3.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ddd/}

HOMEPAGE=	http://www.gnu.org/software/ddd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	any
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/libiberty \
				${WRKSRC}/readline/support
CONFIGURE_ARGS=	--with-readline-libraries=/usr/lib

MAKE_FLAGS=	MAINTAINER="'${MAINTAINER}'"

VMEM_WARNING=	Yes

DOCS=	README ddd-paper.ps ddd.ps sample.dddinit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/PROBLEMS ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/ddd/sample.c ${PREFIX}/share/doc/ddd
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ddd
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd-paper.ps
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd.ps

.include <bsd.port.mk>
