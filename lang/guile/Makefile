# $OpenBSD: Makefile,v 1.4 1999/02/27 01:21:14 fgsch Exp $
#

DISTNAME=		guile-1.3
CATEGORIES=		lang

NEED_VERSION=		1.64

MAINTAINER=             br@spooky.net

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	guile

GNU_CONFIGURE=		yes

.if defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=       --disable-shared
.endif

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
