# $OpenBSD: Makefile,v 1.11 2021/11/03 16:03:01 sthen Exp $

COMMENT =	convert RSS/Atom newsfeeds to email

MODPY_EGG_VERSION = 3.13.1
DISTNAME =	rss2email-${MODPY_EGG_VERSION}
CATEGORIES =	mail www
REVISION =	1

MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

RUN_DEPENDS +=	converters/py-html2text${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR =	${WRKSRC}/test

post-install:
	${INSTALL_MAN} ${WRKSRC}/r2e.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
