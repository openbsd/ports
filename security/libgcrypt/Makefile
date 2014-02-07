# $OpenBSD: Makefile,v 1.33 2014/02/07 08:57:44 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.6.1
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.1     # 20.1

HOMEPAGE=		http://www.gnupg.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgcrypt/}

MODULES=		devel/gettext
LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static

.if ${MACHINE_ARCH} != "hppa"
CONFIGURE_ARGS+=       --disable-asm
.endif

.include <bsd.port.mk>
