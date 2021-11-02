# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:17 sthen Exp $

COMMENT =	threaded Python IMAP4 client

MODPY_EGG_VERSION =	3.6

DISTNAME =	imaplib2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
