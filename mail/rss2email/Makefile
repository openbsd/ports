COMMENT =	convert RSS/Atom newsfeeds to email

MODPY_EGG_VERSION = 3.14
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
MODPY_PYBUILD =		poetry-core
MODPY_TEST_DIR =	${WRKSRC}/test

post-install:
	${INSTALL_MAN} ${WRKSRC}/r2e.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
