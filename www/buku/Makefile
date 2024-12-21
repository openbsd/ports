COMMENT =		powerful command-line bookmark manager

MODPY_DISTV =	4.9
DISTNAME =		buku-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		www

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-certifi \
			devel/py-html5lib \
			security/py-cryptography \
			www/py-beautifulsoup4 \
			www/py-urllib3 \
			x11/xsel

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/buku.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
