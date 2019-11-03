# $OpenBSD: Makefile,v 1.5 2019/11/03 11:42:11 jasper Exp $

COMMENT =	X C Binding - protocol binding generator

# please keep in sync with the version in proto/xcb-proto in Xenocara
VERSION=	1.13
DISTNAME =	xcb-proto-${VERSION}
PKGNAME =	py-xcbgen-${VERSION}
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	https://xcb.freedesktop.org/

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://xcb.freedesktop.org/dist/

EXTRACT_SUFX=           .tar.bz2

MODULES=		lang/python

FLAVORS =		python3
FLAVOR ?=

NO_BUILD =		Yes
NO_TEST =		Yes
MODPY_BUILDDEP =	Yes

XCBGEN_SRCS= \
	__init__.py \
	align.py \
	error.py \
	expr.py \
	matcher.py \
	state.py \
	xtypes.py

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MODPY_SITEPKG}/xcbgen
	cd ${WRKSRC}/xcbgen ; for i in ${XCBGEN_SRCS}; do \
		${INSTALL_DATA} $$i ${DESTDIR}${MODPY_SITEPKG}/xcbgen; \
	done
	cd ${DESTDIR}${MODPY_SITEPKG}/xcbgen; \
	env PYTHON=${MODPY_BIN} ${SHELL} ${WRKSRC}/py-compile \
		--destdir ${DESTDIR} --basedir ${MODPY_SITEPKG}/xcbgen  \
		${XCBGEN_SRCS}

.include <bsd.port.mk>
