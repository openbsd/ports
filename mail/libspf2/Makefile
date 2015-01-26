# $OpenBSD: Makefile,v 1.9 2015/01/26 22:42:35 sthen Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.10
REVISION=	0

SHARED_LIBS +=	spf2                 4.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		lib/libbind/bind c pthread
MODULES=		devel/gettext

# requires res_close() or res_ninit()
LIB_DEPENDS=		net/libbind

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/bind" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/libbind -Wl,-rpath ${LOCALBASE}/lib/libbind -lbind"

# broken test cases
NO_TEST=		yes

.include <bsd.port.mk>
