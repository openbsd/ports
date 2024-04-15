COMMENT =	matrix-WhatsApp puppeting bridge

MODGO_VERSION =	v0.10.6
MODGO_MODNAME =	maunium.net/go/mautrix-whatsapp

DISTNAME =	mautrix-whatsapp-${MODGO_VERSION}

EPOCH =		0

CATEGORIES =	net

HOMEPAGE =	https://github.com/tulir/mautrix-whatsapp

MAINTAINER =	Renaud Allard <renaud@allard.it>

# GNU Affero General Public License v3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m pthread olm

BUILD_DEPENDS =	devel/olm
RUN_DEPENDS =	devel/olm

MODULES =	lang/go

MAKE_ENV +=	CGO_CFLAGS=-I${LOCALBASE}/include \
		CGO_LDFLAGS=-L${LOCALBASE}/lib

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/mautrix-whatsapp \
	${PREFIX}/bin
	${INSTALL_DATA_DIR} \
	${PREFIX}/share/examples/mautrix-whatsapp
	${INSTALL_DATA} ${WRKSRC}/example-config.yaml \
	${PREFIX}/share/examples/mautrix-whatsapp

.include "modules.inc"

.include <bsd.port.mk>
