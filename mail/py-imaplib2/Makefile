# $OpenBSD: Makefile,v 1.1.1.1 2021/10/28 12:23:47 sthen Exp $

COMMENT =	threaded Python IMAP4 client

MODPY_EGG_VERSION =	3.6

DISTNAME =	imaplib2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	mail

HOMEPAGE =	https://github.com/jazzband/imaplib2/

# MIT
PERMIT_PACKAGE =	Yes

FLAVOR =		python3
FLAVORS =		python3

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
