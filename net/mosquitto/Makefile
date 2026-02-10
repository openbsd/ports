COMMENT=	opensource MQTT broker

DISTNAME=	mosquitto-2.1.2

SHARED_LIBS +=  mosquitto                 3.0
SHARED_LIBS +=  mosquittopp               3.0

CATEGORIES=	net

HOMEPAGE=	https://mosquitto.org/
SITES=		https://mosquitto.org/files/source/

# EPL/EDL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} argon2 c cjson crypto m microhttpd
WANTLIB += readline sqlite3 ssl

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_ADJ_FILES= ${WRKSRC}/plugins/*/*.py

BUILD_DEPENDS=	devel/uthash \
		devel/cunit \
		devel/gtest
# for xml->manpages; releases include generated files, but the cmake
# build regenerates them if xsltproc is present.
BUILD_DEPENDS+=	textproc/libxslt \
		textproc/docbook-xsl
LIB_DEPENDS=	databases/sqlite3 \
		devel/cjson \
		security/argon2 \
		www/libmicrohttpd

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_ARGS=	-DWITH_SRV=no \
		-DWITH_TLS_PSK=no \
		-DWITH_WEBSOCKETS=yes \
		-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
CFLAGS +=	-I${LOCALBASE}/include

TEST_DEPENDS=	${MODPY_RUN_DEPENDS} \
		sysutils/py-psutil

post-install:
	for i in ${WRKSRC}/plugins/*/*.py; do \
		${INSTALL_SCRIPT} $$i ${PREFIX}/bin/mosquitto-`basename $$i`; \
	done

.include <bsd.port.mk>
