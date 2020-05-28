# $OpenBSD: Makefile,v 1.6 2020/05/28 12:39:58 abieber Exp $

COMMENT =	open network for secure, decentralized communication

MODPY_EGG_VERSION =	1.14.0

GH_ACCOUNT =	matrix-org
GH_PROJECT =	synapse
GH_TAGNAME =	v${MODPY_EGG_VERSION}
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-unpaddedbase64${MODPY_FLAVOR} \
		textproc/py-signedjson${MODPY_FLAVOR} \
		textproc/py-canonicaljson${MODPY_FLAVOR} \
		devel/py-asn1${MODPY_FLAVOR} \
		devel/py-blist${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR} \
		devel/py-simplejson${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-constantly${MODPY_FLAVOR} \
		devel/py-hamcrest${MODPY_FLAVOR} \
		devel/py-incremental${MODPY_FLAVOR} \
		devel/py-automat${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR} \
		net/py-msgpack${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		telephony/py-phonenumbers${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-macaroons${MODPY_FLAVOR} \
		www/py-treq${MODPY_FLAVOR} \
		www/py-bleach${MODPY_FLAVOR} \
		www/py-hyperlink${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		sysutils/py-daemonize${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		sysutils/py-prometheus_client${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		security/py-bcrypt${MODPY_FLAVOR} \
		security/py-libnacl${MODPY_FLAVOR} \
		security/py-service_identity${MODPY_FLAVOR} \
		security/py-PyNaCl${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR}

TEST_DEPENDS =	${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=. ${LOCALBASE}/bin/trial-3 tests

post-install:
	@mkdir ${PREFIX}/share/synapse
.for script in	generate_config generate_signing_key.py \
		move_remote_media_to_new_store.py \
		sync_room_to_group.pl hash_password \
		register_new_matrix_user synapse_port_db synctl
	@mv ${PREFIX}/bin/${script} ${PREFIX}/share/synapse
.endfor

.include <bsd.port.mk>
