# $OpenBSD: Makefile,v 1.5 2013/08/30 22:58:25 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-0.99

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
