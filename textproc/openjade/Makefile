# $OpenBSD: Makefile,v 1.3 2000/09/26 02:26:47 brad Exp $

DISTNAME=	openjade-1.3
CATEGORIES=	textproc
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= openjade

HOMEPAGE=	http://openjade.sourceforge.net/

MAINTAINER=	matthieu@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	RANLIB="${RANLIB}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}" INSTALL="${INSTALL_PROGRAM}"

USE_GMAKE=	Yes

DOCDIR= ${PREFIX}/share/doc/openjade

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/sp
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/jadedoc/copying.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${DOCDIR}/sp
	${INSTALL_DATA} ${WRKSRC}/jadedoc/*.htm ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/images/*.gif ${DOCDIR}/images

.include <bsd.port.mk>
