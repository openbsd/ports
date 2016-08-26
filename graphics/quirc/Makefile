# $OpenBSD: Makefile,v 1.1.1.1 2016/08/26 10:14:14 czarkoff Exp $

COMMENT =		QR decoder library
DISTNAME =		libquirc-0.0.20160815
GH_ACCOUNT =		dlbeer
GH_PROJECT =		quirc
GH_COMMIT =		5b262480091d5f84a67a4a56c728fc8b39844339
CATEGORIES =		graphics

SHARED_LIBS +=		quirc 0.0 # 1.0

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
