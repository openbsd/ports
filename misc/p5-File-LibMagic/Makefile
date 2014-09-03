# $OpenBSD: Makefile,v 1.9 2014/09/03 19:53:02 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-1.03

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c magic

# the link to by-module is missing on cpan for 1.03
CPAN_AUTHOR =		DROLSKY

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libmagic

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

.include <bsd.port.mk>
