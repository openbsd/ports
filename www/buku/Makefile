COMMENT =	powerful command-line bookmark manager

MODPY_EGG_VERSION =	4.7.1
DISTNAME =	buku-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	www

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-certifi${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			x11/xsel

post-install:
	${INSTALL_MAN} ${WRKSRC}/buku.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
