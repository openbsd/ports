# $OpenBSD: Makefile,v 1.1.1.1 2009/01/18 20:08:36 djm Exp $

COMMENT=		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION=	2.1.1
DISTNAME=		Jinja2-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}

CATEGORIES=		www devel

HOMEPAGE=		http://jinja.pocoo.org/2/
MASTER_SITES=		http://pypi.python.org/packages/source/J/Jinja2/

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::devel/py-py

post-install:
	mv ${PREFIX}/docs ${PREFIX}/share/doc/py-jinja2

do-regress:
	cd ${WRKSRC}/tests && py.test
 
.include <bsd.port.mk>
