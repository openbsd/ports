# $OpenBSD: Makefile,v 1.1.1.1 2017/09/16 03:43:32 sunil Exp $

COMMENT =	set of Maildir utilities

VERSION =	0.2
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
MAKE_FLAGS =	PORTS_CFLAGS="${CFLAGS}" \
		LOCALBASE="${LOCALBASE}"
FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANDIR="${PREFIX}/man"

TEST_TARGET =	check

.include <bsd.port.mk>
