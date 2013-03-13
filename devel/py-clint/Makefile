# $OpenBSD: Makefile,v 1.4 2013/03/13 07:47:28 benoit Exp $

COMMENT =		command line interface tools for Python

MODPY_EGG_VERSION=	0.3.1
DISTNAME=		clint-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		1
CATEGORIES=		devel

HOMEPAGE =		https://pypi.python.org/pypi/clint
MAINTAINER =		frantisek holop <minusf@obiit.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=c/clint/}

MODULES=		lang/python

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clint 
	mv ${PREFIX}/*.rst ${PREFIX}/share/doc/clint

.include <bsd.port.mk>
