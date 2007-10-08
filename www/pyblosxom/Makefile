# $OpenBSD: Makefile,v 1.4 2007/10/08 08:22:43 steven Exp $

COMMENT=	Python weblog system

DISTNAME=	pyblosxom-1.3.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
PKG_ARCH=	*

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyblosxom/}
HOMEPAGE=	http://pyblosxom.sourceforge.net/

# MIT
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

post-install:
	perl -p -i -e "s|^\#\!/usr/bin/env python|\#\!${MODPY_BIN}|" \
	    ${PREFIX}/share/examples/pyblosxom/pyblosxom.cgi
	mv ${PREFIX}/share/examples/pyblosxom/config.py \
	    ${PREFIX}/share/examples/pyblosxom/config.py.example
	cp -r ${WRKSRC}/Pyblosxom/flavours \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/Pyblosxom

.include <bsd.port.mk>
