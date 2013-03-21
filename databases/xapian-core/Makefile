# $OpenBSD: Makefile,v 1.14 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	search engine library

V=		1.2.12
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian	3.1	# .27.0

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++ z e2fs-uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/


# needs uuid_generate(3) which devel/uuid does not provide
LIB_DEPENDS=	sysutils/e2fsprogs

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-sse

pre-configure:
	perl -pi -e "s,for ac_lib in '' uuid,for ac_lib in '' e2fs-uuid," \
		${WRKSRC}/configure

.include <bsd.port.mk>
