# $OpenBSD: Makefile,v 1.10 2008/04/02 15:30:51 fgsch Exp $

COMMENT=	Python clone of WikiWiki

DISTNAME=	moin-1.6.2
PKGNAME=	moin${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://moinmo.in/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://static.moinmo.in/files/

MODULES=	lang/python
RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS}

NO_REGRESS=	Yes

PKG_ARCH=	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} CHANGES INSTALL.html \
	  README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
