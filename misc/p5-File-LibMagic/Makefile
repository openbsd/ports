# $OpenBSD: Makefile,v 1.17 2017/10/29 21:49:16 bluhm Exp $

COMMENT =	perl wrapper for libmagic

DISTNAME =	File-LibMagic-1.16

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c magic perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Config-AutoConf
RUN_DEPENDS =		devel/libmagic
LIB_DEPENDS =		devel/libmagic
TEST_DEPENDS =		devel/p5-Test-Fatal

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

# Use build dependency instead of included copy of Config::AutoConf.
post-extract:
	rm -rf -- ${WRKSRC}/inc

.include <bsd.port.mk>
