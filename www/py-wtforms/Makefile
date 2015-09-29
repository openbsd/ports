# $OpenBSD: Makefile,v 1.5 2015/09/29 10:53:17 sthen Exp $

COMMENT=	flexible forms validation and rendering library

MODPY_EGG_VERSION=1.0.5
DISTNAME=	WTForms-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
REVISION =	1

HOMEPAGE=	http://wtforms.simplecodes.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
EXTRACT_SUFX=		.zip

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/py-sphinx
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
