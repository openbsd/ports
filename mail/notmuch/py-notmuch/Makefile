# $OpenBSD: Makefile,v 1.4 2021/11/02 00:01:17 sthen Exp $

COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}
REVISION =          0

FLAVORS =	python3
FLAVOR  =	python3

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

.include <bsd.port.mk>
