# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:56 sthen Exp $

COMMENT =	convert RSS/Atom newsfeeds to email

MODPY_EGG_VERSION = 3.10
DISTNAME =	rss2email-${MODPY_EGG_VERSION}
CATEGORIES =	mail www
REVISION =	0

MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

RUN_DEPENDS +=	converters/py-html2text${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR}

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/r2e.1 ${PREFIX}/man/man1/

do-test:
	cd ${WRKSRC} && env PYTHONPATH=. ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
