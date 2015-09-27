# $OpenBSD: Makefile,v 1.15 2015/09/27 19:35:55 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-1.15

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c magic

MODULES =		cpan
RUN_DEPENDS =		devel/libmagic
LIB_DEPENDS =		devel/libmagic
TEST_DEPENDS =		devel/p5-Test-Fatal

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

.include <bsd.port.mk>
