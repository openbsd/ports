COMMENT =	web-application vulnerability scanner

MODPY_EGG_VERSION =	3.2.1
DISTNAME =	wapiti3-${MODPY_EGG_VERSION}
PKGNAME =	wapiti-${MODPY_EGG_VERSION}

CATEGORIES =	security www

HOMEPAGE =	https://wapiti-scanner.github.io/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-brotli${MODPY_FLAVOR} \
			archivers/py-brotlicffi${MODPY_FLAVOR} \
			databases/py-aiosqlite${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/py-aiocache${MODPY_FLAVOR} \
			devel/py-asn1${MODPY_FLAVOR} \
			devel/py-loguru${MODPY_FLAVOR} \
			devel/py-prance${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			net/py-tld${MODPY_FLAVOR} \
			security/mitmproxy \
			security/py-yaswfp${MODPY_FLAVOR} \
			security/sslscan \
			textproc/py-MarkupSafe${MODPY_FLAVOR} \
			textproc/py-humanize${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-arsenic${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-browser-cookie3${MODPY_FLAVOR} \
			www/py-h11${MODPY_FLAVOR} \
			www/py-httpcore${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR} \
			www/py-httpx-ntlm${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR}

# here no tests inside
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wapiti
	@mv ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/doc/* \
		${PREFIX}/share/doc/wapiti/
	@rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/doc
	@mv ${PREFIX}/share/doc/wapiti/*.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
