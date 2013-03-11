# $OpenBSD: Makefile,v 1.12 2013/03/11 11:37:55 espie Exp $

COMMENT=	command-line interface to Google services

MODPY_EGG_VERSION= 0.9.13
DISTNAME=	googlecl-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	productivity devel www

HOMEPAGE=	http://code.google.com/p/googlecl/

MODULES=	lang/python
PKG_ARCH=	*

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://googlecl.googlecode.com/files/

MODPY_SETUPTOOLS= Yes
USE_GROFF =	Yes
RUN_DEPENDS=	devel/py-gdata
NO_TEST=	Yes

# Use the version of python we are configured against.
post-extract:
	perl -p -i -e 's|^\#\!/usr/bin/python2.5|\#\!${MODPY_BIN}|' \
	    ${WRKSRC}/src/google

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/google.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
