# $OpenBSD: Makefile,v 1.2 2008/11/17 18:33:47 jasper Exp $

COMMENT=		GGZ Gaming Zone - base library

DISTNAME=		libggz-$V
SHARED_LIBS +=	ggz                  0.0      # .5.0

CONFIGURE_ARGS+=	--with-gcrypt \
			--with-tls="OpenSSL"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext

WANTLIB=		crypto gpg-error ssl

LIB_DEPENDS=		gcrypt::security/libgcrypt

.include <bsd.port.mk>
