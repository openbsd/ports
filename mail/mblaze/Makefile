# $OpenBSD: Makefile,v 1.4 2018/08/31 10:31:41 solene Exp $

COMMENT =	set of Maildir utilities

VERSION =	0.4
DISTNAME =	mblaze-${VERSION}
GH_ACCOUNT =	chneukirchen
GH_PROJECT =	mblaze
GH_TAGNAME =	v${VERSION}
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
