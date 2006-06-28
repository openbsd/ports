# $OpenBSD: Makefile,v 1.1.1.1 2006/06/28 17:22:52 jasper Exp $

COMMENT=		"C macros to add, find and delete items from a hash"

DISTNAME=		uthash-1.1
CATEGORIES=		devel

HOMEPAGE=		http://uthash.sf.net/
MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=uthash/}
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/uthash.h ${PREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/doc/man/uthash.3 ${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uthash/img
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.{css,html} \
		${PREFIX}/share/doc/uthash
	${INSTALL_DATA} ${WRKSRC}/doc/html/img/* ${PREFIX}/share/doc/uthash/img

do-regress:
	@cd ${WRKSRC}/tests/ && ${MAKE} run_tests

.include <bsd.port.mk>
