# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:56 sthen Exp $

COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}
REVISION =          0

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

.include <bsd.port.mk>
