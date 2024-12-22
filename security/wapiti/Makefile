COMMENT =	web-application vulnerability scanner

MODPY_DISTV =	3.2.2
DISTNAME =	wapiti3-${MODPY_DISTV}
PKGNAME =	wapiti-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	security www

HOMEPAGE =	https://wapiti-scanner.github.io/

MAINTAINER =	Kirill A. Korinsky <kirill@korins.ky>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-brotli \
			archivers/py-brotlicffi \
			databases/py-aiosqlite \
			databases/py-sqlalchemy \
			devel/py-aiocache \
			devel/py-asn1 \
			devel/py-loguru \
			devel/py-prance \
			devel/py-typing-extensions \
			net/py-dnspython \
			net/py-tld \
			security/mitmproxy \
			security/py-yaswfp \
			security/sslscan \
			textproc/py-MarkupSafe \
			textproc/py-humanize \
			www/py-aiohttp \
			www/py-wapiti_arsenic \
			www/py-beautifulsoup4 \
			www/py-browser-cookie3 \
			www/py-h11 \
			www/py-httpcore \
			www/py-httpx \
			www/py-httpx-ntlm \
			www/py-mako

# here no tests inside
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wapiti
	@mv ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/doc/* \
		${PREFIX}/share/doc/wapiti/
	@rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/doc
	@mv ${PREFIX}/share/doc/wapiti/*.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
