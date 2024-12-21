COMMENT =		interactive intercepting HTTP proxy

MODPY_DISTV =	11.0.2

DISTNAME =		mitmproxy-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		security www net

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://downloads.mitmproxy.org/${MODPY_DISTV}/

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-aioquic \
			www/py-asgiref \
			archivers/py-brotli \
			devel/py-certifi \
			security/py-cryptography \
			www/py-flask \
			www/py-h11 \
			www/py-h2 \
			www/py-hyperframe \
			devel/py-kaitaistruct \
			databases/py-ldap3 \
			security/py-mitmproxy_rs \
			net/py-msgpack \
			security/py-passlib \
			security/py-openssl \
			devel/py-parsing \
			sysutils/py-pyperclip \
			textproc/py-ruamel.yaml \
			devel/py-sortedcontainers \
			www/py-tornado \
			devel/py-urwid \
			net/py-wsproto \
			net/py-publicsuffix2 \
			archivers/py-zstandard

NO_TEST =		Yes

.include <bsd.port.mk>
