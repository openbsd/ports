# $OpenBSD: Makefile,v 1.1.1.1 2013/12/27 09:20:12 jasper Exp $

COMMENT=	flexible forms validation and rendering library

MODPY_EGG_VERSION=1.0.5
DISTNAME=	WTForms-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://wtforms.simplecodes.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MASTER_SITES=		${MASTER_SITE_PYPI:=W/WTForms/}
EXTRACT_SUFX=		.zip

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil

MODPY_SETUPTOOLS=	Yes

USE_GMAKE=		Yes

post-build:
	@cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}wtforms
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}wtforms

.include <bsd.port.mk>
