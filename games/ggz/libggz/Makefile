# $OpenBSD: Makefile,v 1.9 2010/11/08 15:54:54 espie Exp $

COMMENT=		GGZ Gaming Zone - base library

DISTNAME=		libggz-$V
REVISION =		2
SHARED_LIBS +=	ggz                  0.0      # .5.0

CONFIGURE_ARGS+=	--with-gcrypt \
			--with-tls="OpenSSL"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext
USE_GROFF =		Yes

WANTLIB=		crypto gpg-error ssl pthread gcrypt

LIB_DEPENDS=		::security/libgcrypt

# compiler takes insane amounts of time to compile
.if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "hppa"
EXTRA_CFLAGS=	-O1
.endif

MAKE_FLAGS+=	EXTRA_CFLAGS=${EXTRA_CFLAGS}

.include <bsd.port.mk>
