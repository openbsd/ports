# $OpenBSD: Makefile,v 1.11 2014/12/19 16:18:04 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		perl wrapper for libmagic

DISTNAME =		File-LibMagic-1.08

CATEGORIES =		misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c magic

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/libmagic

CONFIGURE_ARGS +=	--include ${LOCALBASE}/include --lib ${LOCALBASE}/lib
CONFIGURE_ARGS +=	"LIBS=-L${LOCALBASE}/lib -lmagic"

# The version 1.08 has an additional layer of source files in the
# package.  Seems like a bug in the creation process.  We do not
# want to rely on such crap, just remove it.
post-extract:
	rm -r ${WRKDIST}/File-LibMagic-1.08

.include <bsd.port.mk>
