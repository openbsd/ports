# $OpenBSD: Makefile,v 1.11 2011/08/29 12:44:29 ajacoutot Exp $

COMMENT=		GGZ Gaming Zone - base library

DISTNAME=		libggz-$V
REVISION =		3
SHARED_LIBS +=	ggz                  0.0      # .5.0

CONFIGURE_ARGS+=	--with-gcrypt \
			--with-tls="OpenSSL"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext
USE_GROFF =		Yes

WANTLIB=		crypto gpg-error ssl pthread gcrypt

LIB_DEPENDS=		security/libgcrypt

.include <bsd.port.mk>
