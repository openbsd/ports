# $OpenBSD: Makefile,v 1.4 2015/04/02 14:21:18 jasper Exp $

COMMENT=	simple integration of Flask and WTForms

MODPY_EGG_VERSION=0.9.4
DISTNAME=	Flask-WTF-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0
CATEGORIES=	www

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		textproc/py-sphinx
RUN_DEPENDS=		www/py-flask \
			www/py-wtforms

# Could also use various unported eggs, Flask-Babel, speaklater
TEST_DEPENDS=		devel/py-nose

USE_GMAKE=		Yes

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-flask-wtf/
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}-flask-wtf/

.include <bsd.port.mk>
