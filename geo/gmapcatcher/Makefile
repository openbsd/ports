# $OpenBSD: Makefile,v 1.2 2010/04/22 10:39:28 kevlo Exp $

COMMENT=	offline maps viewer

VERSION=	0.7.0.0
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

pre-configure:
	@find ${WRKSRC} -name \*.py | \
	    xargs perl -i -pe 's,^#!/usr/bin/env python,#!${MODPY_BIN},'
	@cp ${FILESDIR}/setup.py ${WRKSRC}
	@mv ${WRKSRC}/src ${WRKSRC}/gmapcatcher
	cd ${WRKSRC} && find . ! -type d \
	    -exec perl -pi -e 's,src,gmapcatcher,g' {} \;

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maps.py ${PREFIX}/bin/gmapcatcher
	${INSTALL_SCRIPT} ${WRKSRC}/download.py \
		${PREFIX}/bin/gmapcatcher-download

.include <bsd.port.mk>
