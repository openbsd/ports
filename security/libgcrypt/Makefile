# $OpenBSD: Makefile,v 1.28 2013/05/13 08:52:01 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.5.2
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               18.0     # 19.0

HOMEPAGE=		http://www.gnupg.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/libgcrypt/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/libgcrypt/ \
		http://ftp.planetmirror.com/pub/gnupg/libgcrypt/ \
		http://sunsite.dk/pub/security/gcrypt/libgcrypt/ \
		http://ftp.linux.it/pub/mirrors/gnupg/libgcrypt/

MODULES=		devel/gettext
LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static

.if ${MACHINE_ARCH} != "hppa"
CONFIGURE_ARGS+=       --disable-asm
.endif

.include <bsd.port.mk>
