COMMENT=	secure RTP library

GH_ACCOUNT=	cisco
GH_PROJECT=	libsrtp
GH_TAGNAME=	v2.7.0
REVISION=	0

SHARED_LIBS=	srtp2	6.0

CATEGORIES=	security telephony

# BSD
PERMIT_PACKAGE=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/meson

CONFIGURE_ARGS=	-Dpcap-tests=disabled \
		-Ddoc=disabled

.include <bsd.port.mk>
