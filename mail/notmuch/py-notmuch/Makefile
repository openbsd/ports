# $OpenBSD: Makefile,v 1.3 2020/08/13 18:21:19 sthen Exp $

COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}

FLAVORS =	python3
FLAVOR  =	python3

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

.include <bsd.port.mk>
