# $OpenBSD: Makefile,v 1.21 2000/08/17 05:47:24 kevlo Exp $

DISTNAME=	ddd-3.2.1
CATEGORIES=	devel
NEED_VERSION=	1.319

HOMEPAGE=	http://www.gnu.org/software/ddd/

MASTER_SITES=   ${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= ddd

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/PROBLEMS ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/README ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/ddd-paper.ps ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/ddd.ps ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/sample.c ${PREFIX}/share/doc/ddd
	${INSTALL_DATA} ${WRKSRC}/doc/sample.dddinit ${PREFIX}/share/doc/ddd
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd-paper.ps
	@${GZIP_CMD} ${PREFIX}/share/doc/ddd/ddd.ps

check:	build
	@cd ${WRKSRC}; ${MAKE_PROGRAM} check

.include <bsd.port.mk>
