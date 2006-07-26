# $OpenBSD: Makefile,v 1.1.1.1 2006/07/26 10:25:56 djm Exp $

COMMENT=	"Python weblog system"

DISTNAME=	pyblosxom-1.3.2
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

PYPATH=		${LOCALBASE}/bin/python${MODPY_VERSION}

post-install:
	perl -p -i -e "s|^\#\!/usr/bin/env python|\#\!${PYPATH}|" \
	    ${PREFIX}/share/examples/pyblosxom/pyblosxom.cgi
	mv ${PREFIX}/share/examples/pyblosxom/config.py \
	    ${PREFIX}/share/examples/pyblosxom/config.py.example
	cp -r ${WRKSRC}/Pyblosxom/flavours \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/Pyblosxom

.include <bsd.port.mk>
