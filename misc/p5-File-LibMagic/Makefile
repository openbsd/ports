# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:49 naddy Exp $

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-1.15

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c magic perl

MODULES =		cpan
RUN_DEPENDS =		devel/libmagic
LIB_DEPENDS =		devel/libmagic
TEST_DEPENDS =		devel/p5-Test-Fatal

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

.include <bsd.port.mk>
