# $OpenBSD: Makefile,v 1.30 2021/12/25 10:21:25 sdk Exp $

COMMENT =		desktop wiki

MODPY_EGG_VERSION =	0.74.3
DISTNAME =		zim-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		https://zim-wiki.org/

MAINTAINER =		Sebastian Benoit <benno@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://zim-wiki.org/downloads/

NO_TEST =		Yes

MODULES =       	lang/python

COMMON_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-xdg${MODPY_FLAVOR} \
			devel/xdg-utils \
			x11/gtk+3

BUILD_DEPENDS = 	${COMMON_DEPENDS}

RUN_DEPENDS =		${COMMON_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

PORTHOME =		${WRKDIR}
MAKE_ENV +=		XDG_RUNTIME_DIR=${PORTHOME}

.include <bsd.port.mk>
