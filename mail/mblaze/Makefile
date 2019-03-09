# $OpenBSD: Makefile,v 1.6 2019/03/09 04:59:43 sunil Exp $

COMMENT =	set of Maildir utilities

GH_ACCOUNT =	leahneukirchen
GH_PROJECT =	mblaze
GH_TAGNAME =	v0.5.1
CATEGORIES =	mail

MAINTAINER =	Sunil Nimmagadda <sunil@nimmagadda.net>

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
