# $OpenBSD: Makefile,v 1.29 2001/11/10 13:24:36 espie Exp $

COMMENT=	"Data Display Debugger, graphical front-end for GDB, etc"

DISTNAME=	ddd-3.2.1
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= ddd

HOMEPAGE=	http://www.gnu.org/software/ddd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	any
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/libiberty ${WRKSRC}/readline/support
CONFIGURE_ENV=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

MAKE_FLAGS=	MAINTAINER='${MAINTAINER:Q}'

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

DOCS=	README ddd-paper.ps ddd.ps sample.c sample.dddinit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/PROBLEMS ${PREFIX}/share/doc/ddd
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ddd
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd-paper.ps
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd.ps

.include <bsd.port.mk>
