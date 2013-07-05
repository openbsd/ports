# $OpenBSD: Makefile,v 1.4 2013/07/05 00:31:59 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-0.97

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c magic

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libmagic

CONFIGURE_ARGS +=	"INC=-I/usr/local/include"
CONFIGURE_ARGS +=	"LIBS=-L/usr/local/lib -lmagic"

.include <bsd.port.mk>
