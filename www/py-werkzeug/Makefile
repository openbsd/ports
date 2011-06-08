# $OpenBSD: Makefile,v 1.7 2011/06/08 18:15:29 rpointel Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	0.6.2
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		http://werkzeug.pocoo.org/

MASTER_SITES =		${MASTER_SITE_PYPI:=W/Werkzeug/}

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
PKG_ARCH =		*

REGRESS_DEPENDS =	devel/py-nose \
			textproc/py-lxml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-werkzeug
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/py-werkzeug

do-regress:
	cd ${WRKSRC} && ${MAKE} test
 
.include <bsd.port.mk>
