COMMENT =	open network for secure, decentralized communication

MODPY_DISTV =	1.146.0

GH_ACCOUNT =	element-hq
GH_PROJECT =	synapse
GH_TAGNAME =	v${MODPY_DISTV}
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

WANTLIB +=	${MODCARGO_WANTLIB} m

MODPY_PYBUILD =	maturin

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No
MODCARGO_CARGOTOML =	${WRKSRC}/rust/Cargo.toml

MAKE_ENV +=		${MODCARGO_ENV}

BUILD_DEPENDS += devel/py-setuptools-rust>=1.3.0

# in same order as in pyproject.toml: mandatory section
RUN_DEPENDS =	devel/py-jsonschema>=3.0.0 \
		devel/py-rpds-py>=0.25.0 \
		devel/py-immutabledict \
		textproc/py-unpaddedbase64>=2.1.0 \
		textproc/py-canonicaljson<3.0.0,>=2.0.0 \
		textproc/py-signedjson \
		security/py-service_identity \
		devel/py-twisted \
		www/py-treq \
		security/py-openssl \
		textproc/py-yaml \
		devel/py-asn1 \
		devel/py-asn1-modules \
		security/py-bcrypt \
		graphics/py-Pillow>=10.0.1 \
		devel/py-sortedcontainers \
		devel/py-pydantic \
		www/py-macaroons \
		net/py-msgpack \
		telephony/py-phonenumbers \
		sysutils/py-prometheus_client \
		devel/py-attrs \
		net/py-netaddr \
		www/py-jinja2 \
		www/py-bleach \
		devel/py-typing-extensions>=4.14.1 \
		security/py-cryptography \
		textproc/py-ijson \
		devel/py-matrix-common>=1.3.0,<2.0.0 \
		sysutils/py-packaging \
		www/py-python-multipart
# still relying on pkg_resources, see comments in
# https://github.com/matrix-org/synapse/pull/12542
RUN_DEPENDS +=	devel/py-setuptools
# optional section
RUN_DEPENDS +=	textproc/py-lxml
# not listed but used in some scripts/ files
RUN_DEPENDS +=	www/py-requests \
		devel/py-parsing


TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-mock \
		devel/py-parameterized \
		devel/py-parsing \
		devel/py-pyrsistent \
		www/py-jwt

do-configure:
	@${MODCARGO_configure}

# remove source synapse directory so tests use the installed package from fake
pre-test:
	rm -rf ${WRKSRC}/synapse

do-test:
	cd ${MODPY_TEST_DIR} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} -m twisted.trial tests

# to generate rust modules.inc:
#  make modcargo-gen-crates and modcargo-gen-crates-licenses
.include "modules.inc"
.include <bsd.port.mk>
