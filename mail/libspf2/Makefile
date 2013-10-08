# $OpenBSD: Makefile,v 1.7 2013/10/08 06:25:58 jasper Exp $

COMMENT=	SPF library

DISTNAME=	libspf2-1.2.9
REVISION=	3

SHARED_LIBS +=	spf2                 3.0      # 3.0

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
