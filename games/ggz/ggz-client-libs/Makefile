# $OpenBSD: Makefile,v 1.5 2010/11/16 11:23:26 espie Exp $

COMMENT=		GGZ Gaming Zone - core client libraries

DISTNAME=		ggz-client-libs-$V
SHARED_LIBS +=  ggzcore              0.0      # .9.0
SHARED_LIBS +=  ggzmod               0.0      # .5.0

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext
USE_GROFF =		Yes

WANTLIB=		c crypto expat gcrypt gpg-error pthread ssl ggz

LIB_DEPENDS=		games/ggz/libggz

.include <bsd.port.mk>
