# $OpenBSD: Makefile,v 1.2 2008/11/17 18:33:47 jasper Exp $

COMMENT=		GGZ Gaming Zone - core client libraries

DISTNAME=		ggz-client-libs-$V
SHARED_LIBS +=  ggzcore              0.0      # .9.0
SHARED_LIBS +=  ggzmod               0.0      # .5.0

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext

WANTLIB=		c crypto expat gcrypt gpg-error pthread ssl

LIB_DEPENDS=		ggz::games/ggz/libggz

.include <bsd.port.mk>
