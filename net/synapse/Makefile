COMMENT =	open network for secure, decentralized communication

MODPY_EGG_VERSION =	1.104.0

GH_ACCOUNT =	element-hq
GH_PROJECT =	synapse
GH_TAGNAME =	v${MODPY_EGG_VERSION}
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =	devel/cargo \
		lang/python

WANTLIB +=	${MODCARGO_WANTLIB}

MODPY_PYBUILD =	poetry-core

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

MAKE_ENV +=		${MODCARGO_ENV}

BUILD_DEPENDS += devel/py-setuptools-rust${MODPY_FLAVOR}>=1.3.0

# in same order as in pyproject.toml: mandatory section
RUN_DEPENDS =	devel/py-jsonschema${MODPY_FLAVOR}>=3.0.0 \
		devel/py-immutabledict${MODPY_FLAVOR} \
		textproc/py-unpaddedbase64${MODPY_FLAVOR}>=2.1.0 \
		textproc/py-canonicaljson${MODPY_FLAVOR}<3.0.0,>=2.0.0 \
		textproc/py-signedjson${MODPY_FLAVOR} \
		security/py-service_identity${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR} \
		www/py-treq${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		devel/py-asn1${MODPY_FLAVOR} \
		devel/py-asn1-modules${MODPY_FLAVOR} \
		security/py-bcrypt${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR}>=10.0.1 \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-pydantic${MODPY_FLAVOR} \
		www/py-macaroons${MODPY_FLAVOR} \
		net/py-msgpack${MODPY_FLAVOR} \
		telephony/py-phonenumbers${MODPY_FLAVOR} \
		sysutils/py-prometheus_client${MODPY_FLAVOR} \
		devel/py-attrs${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-bleach${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}>=4.3.0 \
		security/py-cryptography${MODPY_FLAVOR} \
		textproc/py-ijson${MODPY_FLAVOR} \
		devel/py-matrix-common${MODPY_FLAVOR}>=1.3.0,<2.0.0 \
		sysutils/py-packaging${MODPY_FLAVOR} \
		devel/py-pydantic-compat${MODPY_FLAVOR}
# still relying on pkg_resources, see comments in
# https://github.com/matrix-org/synapse/pull/12542
RUN_DEPENDS +=	devel/py-setuptools${MODPY_FLAVOR}
# optional section
RUN_DEPENDS +=	textproc/py-lxml${MODPY_FLAVOR}
# not listed but used in some scripts/ files
RUN_DEPENDS +=	www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-parameterized${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR}

do-configure:
	@${MODCARGO_configure}

# to generate rust modules.inc:
#  make modcargo-gen-crates and modcargo-gen-crates-licenses
.include "modules.inc"
.include <bsd.port.mk>
