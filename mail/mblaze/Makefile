# $OpenBSD: Makefile,v 1.14 2021/12/15 19:32:28 kn Exp $

COMMENT =	set of Maildir utilities

DISTNAME =	mblaze-1.2
CATEGORIES =	mail

HOMEPAGE =	https://git.vuxu.org/mblaze/

MAINTAINER =	Lucas <lucas@sexy.is>

# Public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://leahneukirchen.org/releases/

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
	cd ${WRKBUILD}/contrib && pax -rw . ${PREFIX}/share/mblaze/contrib

.include <bsd.port.mk>
