COMMENT =		interactive intercepting HTTP proxy

MODPY_EGG_VERSION =	10.4.2

DISTNAME =		mitmproxy-${MODPY_EGG_VERSION}

CATEGORIES =		security www net

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://downloads.mitmproxy.org/${MODPY_EGG_VERSION}/

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-brotli${MODPY_FLAVOR} \
			archivers/py-zstandard${MODPY_FLAVOR} \
			databases/py-ldap3${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-kaitaistruct${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			devel/py-protobuf${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			devel/py-urwid${MODPY_FLAVOR} \
			net/py-msgpack${MODPY_FLAVOR} \
			net/py-publicsuffix2${MODPY_FLAVOR} \
			net/py-wsproto${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-mitmproxy_rs${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR} \
			sysutils/py-pyperclip${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			www/py-aioquic${MODPY_FLAVOR} \
			www/py-asgiref${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-h11${MODPY_FLAVOR} \
			www/py-h2${MODPY_FLAVOR} \
			www/py-hyperframe${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
