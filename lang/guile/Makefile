DISTNAME=		guile-1.3
CATEGORIES=		lang

MAINTAINER=             br@spooky.net

MASTER_SITES=		${MASTER_SITE_GNU}

GNU_CONFIGURE=		yes

.if defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=       --disable-shared
.endif

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
