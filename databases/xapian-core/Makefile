# $OpenBSD: Makefile,v 1.15 2013/06/21 22:37:02 sthen Exp $

COMMENT=	search engine library

V=		1.2.12
DISTNAME=	xapian-core-${V}
REVISION=	0

SHARED_LIBS +=  xapian	3.1	# .27.0

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++ z uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/


# needs uuid_generate(3) which devel/uuid does not provide
LIB_DEPENDS=	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-sse

.include <bsd.port.mk>
