COMMENT = 		library for drawing lottie animations

GH_ACCOUNT =		dkaraush
GH_PROJECT =		tlottie
GH_TAGNAME =		v1.0.6

CATEGORIES =		graphics

SHARED_LIBS =		tlottie  0.0

MAINTAINER =		Mykyta Nazarenko <mn@superpc.suicide.solutions>
HOMEPAGE =		https://github.com/dkaraush/tlottie

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

# Enable optional C bindings.
MODCARGO_FEATURES =	c-api
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_INSTALL =	No

do-install:
	${INSTALL_DATA} ${WRKSRC}/include/tlottie.h ${PREFIX}/include/
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/libtlottie.so \
		${PREFIX}/lib/libtlottie.so.${LIBtlottie_VERSION}

.include "crates.inc"
.include <bsd.port.mk>
