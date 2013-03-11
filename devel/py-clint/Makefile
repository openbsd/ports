# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:25 espie Exp $

COMMENT=		Command-Line Application Tools

MODPY_EGG_VERSION=	0.3.1
DISTNAME=		clint-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=c/clint/}

MODULES=		lang/python

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clint 
	mv ${PREFIX}/*.rst ${PREFIX}/share/doc/clint

.include <bsd.port.mk>
