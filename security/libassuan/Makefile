# $OpenBSD: Makefile,v 1.20 2018/01/10 10:59:50 pea Exp $

COMMENT=		IPC library used by GnuPG and gpgme

DISTNAME=		libassuan-2.5.1
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  assuan            2.1      # 8.1

CATEGORIES=		security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libassuan/}

MODULES=		textproc/intltool

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

CFLAGS +=		-fPIC

.include <bsd.port.mk>
