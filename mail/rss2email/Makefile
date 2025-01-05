COMMENT =	convert RSS/Atom newsfeeds to email

MODPY_DISTV =	3.14
DISTNAME =	rss2email-${MODPY_DISTV}
CATEGORIES =	mail www
REVISION =	3

MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

RUN_DEPENDS +=	converters/py-html2text \
		textproc/py-feedparser

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
MODPY_TEST_DIR =	${WRKSRC}/test

post-install:
	${INSTALL_MAN} ${WRKSRC}/r2e.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
