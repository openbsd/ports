# $OpenBSD: Makefile,v 1.1.1.1 2013/12/27 09:24:04 jasper Exp $

COMMENT=	simple integration of Flask and WTForms

MODPY_EGG_VERSION=0.9.4
DISTNAME=	Flask-WTF-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MASTER_SITES=		${MASTER_SITE_PYPI:=F/Flask-WTF/}

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-flask \
			www/py-wtforms

# Could also use various unported eggs, Flask-Babel, speaklater
TEST_DEPENDS=		devel/py-nose

USE_GMAKE=		Yes

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}wtforms
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}wtforms

.include <bsd.port.mk>
