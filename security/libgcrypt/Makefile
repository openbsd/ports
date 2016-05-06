# $OpenBSD: Makefile,v 1.45 2016/05/06 14:41:51 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.7.0
CATEGORIES=		security
REVISION=		0

SHARED_LIBS +=  gcrypt               19.3     # 21.0

HOMEPAGE=		http://www.gnupg.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error iconv intl

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgcrypt/}

LIB_DEPENDS=		security/libgpg-error

# XXX assembler
# crc-intel-pclmul.c:369: Error: no such instruction: `pextrd $1,%xmm0,(%rdi)'
MODULES=		lang/clang
MODCLANG_ARCHS=		i386 amd64

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static

.include <bsd.port.mk>
