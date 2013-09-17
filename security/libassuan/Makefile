# $OpenBSD: Makefile,v 1.14 2013/09/17 11:10:01 ajacoutot Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.1.1
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  assuan            1.1      # 2.0

CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libassuan/}

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	security/libgpg-error

CONFIGURE_STYLE=gnu

CFLAGS+=	-fPIC

.include <bsd.port.mk>
