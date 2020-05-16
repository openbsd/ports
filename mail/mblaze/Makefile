# $OpenBSD: Makefile,v 1.11 2020/05/16 22:16:40 kn Exp $

COMMENT =	set of Maildir utilities

DISTNAME =	mblaze-0.7
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

.include <bsd.port.mk>
