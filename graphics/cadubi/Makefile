# $OpenBSD: Makefile,v 1.11 2007/09/15 20:09:40 simon Exp $

DISTNAME=	cadubi-1.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics editors

# perl artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	ASCII drawing utility
HOMEPAGE=	http://langworth.com/cadubi.html
MASTER_SITES=	http://langworth.com/downloads/

RUN_DEPENDS=	::devel/p5-Term-ReadKey

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	@mkdir ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/help.txt ${PREFIX}/share/doc/cadubi

.include <bsd.port.mk>
