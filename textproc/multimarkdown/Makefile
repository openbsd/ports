# $OpenBSD: Makefile,v 1.2 2015/04/05 13:31:15 sthen Exp $

V =		4.7.1
COMMENT =	marked-up plain text to formatted document converter
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	multimarkdown-${V}
CATEGORIES =	textproc

GH_ACCOUNT =	fletcher
GH_PROJECT =	MultiMarkdown-4
GH_TAGNAME =	${V}

HOMEPAGE =	http://fletcherpenney.net/multimarkdown/
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# Dual licensed: MIT and GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

BUILD_DEPENDS =	devel/greg

USE_GMAKE =	Yes
ALL_TARGET =	ALL
MAKE_FLAGS =	CFLAGS="${CFLAGS} -include GLibFacade.h -DHAVE_ARC4RANDOM" \
		GREG=${LOCALBASE}/bin/greg

# Test files aren't included in distfile.
NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/multimarkdown ${PREFIX}/bin/

.include <bsd.port.mk>
