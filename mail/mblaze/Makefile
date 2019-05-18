# $OpenBSD: Makefile,v 1.7 2019/05/18 00:18:19 danj Exp $

COMMENT =	set of Maildir utilities

GH_ACCOUNT =	leahneukirchen
GH_PROJECT =	mblaze
GH_TAGNAME =	v0.5.1
CATEGORIES =	mail
REVISION =	0

# Public domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c iconv pthread
LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	LOCALBASE="${LOCALBASE}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
		LDLIBS="-L${LOCALBASE}/lib -liconv -pthread"
FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANDIR="${PREFIX}/man"

TEST_TARGET =	check

.include <bsd.port.mk>
