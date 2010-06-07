# $OpenBSD: Makefile,v 1.6 2010/06/07 08:39:34 ajacoutot Exp $

COMMENT=	search engine library

V=		1.2.0
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian               1.0      # .22.0

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++ z e2fs-uuid

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

USE_LIBTOOL=	Yes

# needs uuid_generate(3) which devel/uuid does not provide
LIB_DEPENDS=	e2fs-uuid::sysutils/e2fsprogs

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e "s,for ac_lib in '' uuid,for ac_lib in '' e2fs-uuid," \
		${WRKSRC}/configure

.include <bsd.port.mk>
