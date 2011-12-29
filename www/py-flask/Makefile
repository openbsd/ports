# $OpenBSD: Makefile,v 1.7 2011/12/29 15:14:01 fgsch Exp $

COMMENT = 	microframework based on Werkzeug and Jinja 2

MODPY_EGG_VERSION =	0.8
DISTNAME =	Flask-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www devel

HOMEPAGE =	http://flask.pocoo.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=F/Flask/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-blinker \
		www/py-jinja2>=2.4 \
		www/py-werkzeug>=0.6.1 \
		${MODPY_JSON}
REGRESS_DEPENDS = ${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-flask
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/py-flask

.include <bsd.port.mk>
