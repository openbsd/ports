# $OpenBSD: Makefile,v 1.6 2009/08/10 14:18:30 sthen Exp $

COMMENT-main=		lint-like code checker for Python code
COMMENT-gui=		GUI for pylint

VERSION=		0.13.1
DISTNAME=		pylint-${VERSION}
PKGNAME-main=		pylint-${VERSION}p3
PKGNAME-gui=		pylint-gui-${VERSION}p1
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
RUN_DEPENDS=		:py-logilab-astng-*:devel/py-logilab-astng
RUN_DEPENDS-gui=	${MODPY_TKINTER_DEPENDS} \
			:pylint-${VERSION}:devel/pylint
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::math/py-Numeric

pre-configure:
	@rm ${WRKSRC}/test/input/func___future___import_not_first_stmt.py.orig

do-regress: fake
	cd ${WRKSRC}/test && env \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG}:${MODPY_SITEPKG} \
		PYLINTHOME=${WRKINST} \
		USER_HOME=${WRKSRC} \
		${MODPY_BIN} ./runtests.py

.include <bsd.port.mk>
