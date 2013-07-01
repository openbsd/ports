# $OpenBSD: Makefile,v 1.15 2013/07/01 10:39:18 sthen Exp $

COMMENT-main=		lint-like code checker for Python code
COMMENT-gui=		GUI for pylint

VERSION=		0.24.0
DISTNAME=		pylint-${VERSION}
PKGNAME-main=		pylint-${VERSION}
PKGNAME-gui=		pylint-gui-${VERSION}
REVISION-main =		2
REVISION-gui =		1
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/pylint/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.logilab.fr/pub/pylint/

MULTI_PACKAGES=		-main -gui

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-astng
RUN_DEPENDS-gui=	${MODPY_TKINTER_DEPENDS} \
			devel/pylint=${VERSION}
TEST_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS+=		VERSION

do-test: fake
	cd ${WRKSRC}/test && env \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG}:${MODPY_SITEPKG} \
		PYLINTHOME=${WRKINST} \
		USER_HOME=${WRKSRC} \
		${MODPY_BIN} /usr/local/bin/pytest

.include <bsd.port.mk>
