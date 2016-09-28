# $OpenBSD: Makefile,v 1.16 2016/09/28 19:33:37 jca Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.4.3
REVISION=	0
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  assuan            2.0      # 7.3

CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gpg-error iconv intl

MASTER_SITES=	${MASTER_SITES_GNUPG:=libassuan/}

MODULES=	textproc/intltool

LIB_DEPENDS=	security/libgpg-error

CONFIGURE_STYLE=gnu

CFLAGS+=	-fPIC -DEPROTO=ENOPROTOOPT

.include <bsd.port.mk>
