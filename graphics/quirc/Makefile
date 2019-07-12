# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:09 sthen Exp $

V =			1.0
COMMENT =		QR decoder library
DISTNAME =		libquirc-$V
GH_ACCOUNT =		dlbeer
GH_PROJECT =		quirc
GH_TAGNAME =		v$V
CATEGORIES =		graphics
REVISION =		0

SHARED_LIBS +=		quirc 0.0 # 1.0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL_gfx c jpeg m pthread

LIB_DEPENDS =		devel/sdl-gfx \
			graphics/jpeg
TEST_DEPENDS =		graphics/libqrencode \
			graphics/png

MAKE_FLAGS =		LIB_VERSION=${LIBquirc_VERSION}
MAKE_ENV =		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		DESTDIR=""

ALL_TARGET =		libquirc.a libquirc.so quirc-scanner quirc-demo
TEST_TARGET =		qrtest
TESTDIR =		${WRKBUILD}/test_data

CFLAGS +=		${PICFLAG} -I${LOCALBASE}/include \
			-DQUIRC_MAX_REGIONS=65534
LDFLAGS +=		-L${LOCALBASE}/lib

pre-test:
	@${INSTALL_DATA_DIR} ${TESTDIR}
	@qrencode "${DISTNAME} - ${COMMENT}" -o "${TESTDIR}/1.png"
	@cat pkg/PLIST | qrencode -o "${TESTDIR}/2.png"

post-test:
	@${WRKBUILD}/qrtest ${TESTDIR} | grep '^${TESTDIR:T}' | \
		tee ${WRKBUILD}/test.out
	@cmp ${WRKBUILD}/test.out ${FILESDIR}/test.out

.include <bsd.port.mk>
