COMMENT = liberally licensed VNC server library

V =		1.0.1
DIST_TUPLE =	github any1 neatvnc v${V} .

SHARED_LIBS =	neatvnc 0.0 # 1.0.0

CATEGORIES =	net devel

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += aml avcodec avfilter avutil drm gbm gmp gnutls hogweed
WANTLIB += m nettle pixman-1 turbojpeg z

MODULES =	devel/meson

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/aml \
		devel/gmp \
		graphics/ffmpeg \
		security/nettle \
		security/gnutls

.include <bsd.port.mk>
