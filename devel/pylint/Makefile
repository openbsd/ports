# $OpenBSD: Makefile,v 1.13 2011/09/16 21:47:41 jasper Exp $

COMMENT-main=		lint-like code checker for Python code
COMMENT-gui=		GUI for pylint

VERSION=		0.24.0
DISTNAME=		pylint-${VERSION}
PKGNAME-main=		pylint-${VERSION}
PKGNAME-gui=		pylint-gui-${VERSION}
REVISION-main =		1
REVISION-gui =		0
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/pylint/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.logilab.fr/pub/pylint/

MULTI_PACKAGES=		-main -gui

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-astng
RUN_DEPENDS-gui=	${MODPY_TKINTER_DEPENDS} \
			devel/pylint=${VERSION}
REGRESS_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS+=		VERSION

do-regress: fake
	cd ${WRKSRC}/test && env \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG}:${MODPY_SITEPKG} \
		PYLINTHOME=${WRKINST} \
		USER_HOME=${WRKSRC} \
		${MODPY_BIN} /usr/local/bin/pytest

.include <bsd.port.mk>
