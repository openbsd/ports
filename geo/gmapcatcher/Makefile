# $OpenBSD: Makefile,v 1.3 2010/07/16 10:14:00 kevlo Exp $

COMMENT=	offline maps viewer

VERSION=	0.7.1.0
DISTNAME=	GMapCatcher-${VERSION}
PKGNAME=	gmapcatcher-${VERSION}

CATEGORIES=	geo x11

HOMEPAGE=	http://code.google.com/p/gmapcatcher/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://gmapcatcher.googlecode.com/files/

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-gtk2->=1.10:x11/py-gtk2 \
		:py-sqlite2-*:databases/py-sqlite2 \
		::graphics/py-Imaging 

USE_X11=	Yes

NO_REGRESS=	Yes

pre-patch:
	tr -d '\r' < ${WRKSRC}/download.py > ${WRKSRC}/download.py.new && \
	    mv ${WRKSRC}/download.py.new ${WRKSRC}/download.py
	chmod +x ${WRKSRC}/download.py
	
pre-configure:
	@find ${WRKSRC} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'
	@perl -pi -e s,'download.py','gmapcatcher-download', \
	    ${WRKSRC}/src/mapArgs.py
	@mkdir -p ${WRKSRC}/lib/gmapcatcher
	@touch ${WRKSRC}/lib/gmapcatcher/__init__.py
	@cd ${WRKSRC} && mv images src ./lib/gmapcatcher/.
	@cd ${WRKSRC} && for i in *.py; do \
	    mv $$i ./lib/gmapcatcher/.; done
	@cp ${FILESDIR}/setup.py ${WRKSRC}

post-install:
	ln -s ${TRUEPREFIX}/lib/python${MODPY_VERSION}/site-packages/gmapcatcher/download.py ${PREFIX}/bin/gmapcatcher-download
	ln -s ${TRUEPREFIX}/lib/python${MODPY_VERSION}/site-packages/gmapcatcher/maps.py ${PREFIX}/bin/gmapcatcher

.include <bsd.port.mk>
