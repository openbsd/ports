# $OpenBSD: Makefile,v 1.1 2000/09/04 06:20:55 matthieu Exp $

DISTNAME=	openjade-1.3
CATEGORIES=	textproc

HOMEPAGE=	http://openjade.sourceforge.net/

MAINTAINER=	matthieu@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.sourceforge.net/openjade/

USE_GMAKE=	Yes
MAKE_FLAGS=	RANLIB="${RANLIB}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"


pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

DOCDIR= ${PREFIX}/share/doc/openjade

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/sp
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/jadedoc/copying.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${DOCDIR}/sp
	${INSTALL_DATA} ${WRKSRC}/jadedoc/*.htm ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/images/*.gif ${DOCDIR}/images

.include <bsd.port.mk>
