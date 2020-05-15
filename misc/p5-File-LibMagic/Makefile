# $OpenBSD: Makefile,v 1.19 2020/05/15 20:35:10 bluhm Exp $

COMMENT =	perl wrapper for libmagic

DISTNAME =	File-LibMagic-1.22

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c magic perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Config-AutoConf
RUN_DEPENDS =		devel/libmagic
LIB_DEPENDS =		devel/libmagic
TEST_DEPENDS =		devel/p5-Test-Fatal

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

.include <bsd.port.mk>
