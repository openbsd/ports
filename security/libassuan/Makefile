# $OpenBSD: Makefile,v 1.15 2016/09/19 17:02:15 edd Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.4.3
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  assuan            2.0      # 7.3

CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libassuan/}

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	security/libgpg-error

CONFIGURE_STYLE=gnu

CFLAGS+=	-fPIC -DEPROTO=ENOPROTOOPT

.include <bsd.port.mk>
