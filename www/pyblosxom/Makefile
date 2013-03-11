# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:49 espie Exp $

COMMENT=	Python weblog system

DISTNAME=	pyblosxom-1.3.2
REVISION=	4
CATEGORIES=	www
PKG_ARCH=	*

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyblosxom/}
HOMEPAGE=	http://pyblosxom.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

post-install:
	perl -p -i -e "s|^\#\!/usr/bin/env python|\#\!${MODPY_BIN}|" \
	    ${PREFIX}/share/examples/pyblosxom/pyblosxom.cgi
	mv ${PREFIX}/share/examples/pyblosxom/config.py \
	    ${PREFIX}/share/examples/pyblosxom/config.py.example
	cp -r ${WRKSRC}/Pyblosxom/flavours \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/Pyblosxom

.include <bsd.port.mk>
