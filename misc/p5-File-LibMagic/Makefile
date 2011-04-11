# $OpenBSD: Makefile,v 1.1.1.1 2011/04/11 09:56:20 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-0.96

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		magic

EXTRACT_SUFX =		.tgz

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libmagic

CONFIGURE_ARGS +=	"INC=-I/usr/local/include"
CONFIGURE_ARGS +=	"LIBS=-L/usr/local/lib -lmagic"

.include <bsd.port.mk>
