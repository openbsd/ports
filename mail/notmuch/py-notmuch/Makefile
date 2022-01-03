# $OpenBSD: Makefile,v 1.5 2022/01/03 10:33:25 bket Exp $

COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}

FLAVORS =	python3
FLAVOR  =	python3

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

.include <bsd.port.mk>
