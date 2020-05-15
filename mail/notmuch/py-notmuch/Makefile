# $OpenBSD: Makefile,v 1.1.1.1 2020/05/15 08:58:14 sthen Exp $

COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

.include <bsd.port.mk>
