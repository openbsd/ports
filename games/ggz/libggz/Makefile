# $OpenBSD: Makefile,v 1.6 2010/02/06 11:14:10 landry Exp $

COMMENT=		GGZ Gaming Zone - base library

DISTNAME=		libggz-$V
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=	ggz                  0.0      # .5.0

CONFIGURE_ARGS+=	--with-gcrypt \
			--with-tls="OpenSSL"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES=		devel/gettext

WANTLIB=		crypto gpg-error ssl pthread

LIB_DEPENDS=		gcrypt::security/libgcrypt

# compiler takes insane amounts of time to compile
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "hppa"
EXTRA_CFLAGS=	-O1
.endif

MAKE_FLAGS+=	EXTRA_CFLAGS=${EXTRA_CFLAGS}

.include <bsd.port.mk>
