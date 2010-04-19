# $OpenBSD: Makefile,v 1.4 2010/04/19 17:30:54 fgsch Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.4
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/2/

MAINTAINER =		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=J/Jinja2/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS =	::devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-jinja2
	cd ${WRKSRC}/docs/_build/html && \
	    pax -rw * ${PREFIX}/share/doc/py-jinja2

.include <bsd.port.mk>
