#

DISTNAME=		jpegsrc.v6b
PKGNAME=		jpeg-6b
CATEGORIES=		graphics

NEED_VERSION=		1.73

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		ftp://ftp.uu.net/graphics/jpeg/

WRKSRC=			${WRKDIR}/jpeg-6b
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
