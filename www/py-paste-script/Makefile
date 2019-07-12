# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:02 sthen Exp $

COMMENT=		pluggable command-line frontend

MODPY_EGG_VERSION=	1.7.5
DISTNAME=		PasteScript-${MODPY_EGG_VERSION}
PKGNAME=		py-paste-script-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		www

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cheetah \
			devel/py-wsgiutils \
			www/py-flup \
			www/py-paste \
			www/py-paste-deploy
# NOTE: regression tests won't pass, because they need ZPTKit (which
# has shitloads of dependencies) and FakePlugin.  There isn't much
# point in porting them.
TEST_DEPENDS=		devel/py-nose \
			devel/py-test \
			devel/py-py

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-script
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste-script/

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test .

.include <bsd.port.mk>
