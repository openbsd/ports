# $OpenBSD: Makefile,v 1.4 2010/08/30 22:02:34 sthen Exp $

COMMENT=		WSGI utility collection

MODPY_EGG_VERSION=	0.4.1
DISTNAME=		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
REVISION=		1

CATEGORIES=		www devel

HOMEPAGE=		http://werkzeug.pocoo.org/
MASTER_SITES=		${MASTER_SITE_PYPI:=W/Werkzeug/}

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/py-py

post-install:
	mv ${PREFIX}/docs ${PREFIX}/share/doc/py-werkzeug

do-regress:
	cd ${WRKSRC} && py.test
 
.include <bsd.port.mk>
