# $OpenBSD: Makefile,v 1.11 2013/04/03 06:57:56 ajacoutot Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	1.4.3.1
DISTNAME =	cola-${MODPY_EGG_VERSION}
PKGNAME =	git-${DISTNAME:S/-src//}
CATEGORIES = 	devel x11
REVISION =	2

WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}

HOMEPAGE =	http://cola.tuxfamily.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =  ${HOMEPAGE}/releases/

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4

RUN_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4 \
		devel/desktop-file-utils

MODPY_ADJ_FILES=	bin/git-cola

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/cmds.py

.include <bsd.port.mk>
