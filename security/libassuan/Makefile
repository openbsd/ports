# $OpenBSD: Makefile,v 1.19 2017/12/02 18:48:42 ajacoutot Exp $

COMMENT=		IPC library used by GnuPG and gpgme

DISTNAME=		libassuan-2.4.5
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  assuan            2.0      # 7.3

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
