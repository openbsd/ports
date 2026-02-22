COMMENT =	set of Maildir utilities

DISTNAME =	mblaze-1.4
CATEGORIES =	mail

HOMEPAGE =	https://git.vuxu.org/mblaze/

MAINTAINER =	James Cook <falsifian@falsifian.org>, \
		Omar Polo <op@openbsd.org>

# Public domain
PERMIT_PACKAGE =	Yes

SITES =		https://leahneukirchen.org/releases/

WANTLIB =	c iconv pthread
LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
# Don't include build date in museragent
MAKE_ENV +=	SOURCE_DATE_EPOCH=0
MAKE_FLAGS =	LOCALBASE="${LOCALBASE}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
		LDLIBS="-L${LOCALBASE}/lib -liconv -pthread"
FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANDIR="${PREFIX}/man"

TEST_TARGET =	check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mblaze/contrib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mblaze
	cd ${WRKBUILD}/contrib && pax -rw . ${PREFIX}/share/mblaze/contrib
	${INSTALL_DATA} ${WRKBUILD}/mlesskey.example-openbsd \
		${PREFIX}/share/examples/mblaze/mlesskey

.include <bsd.port.mk>
