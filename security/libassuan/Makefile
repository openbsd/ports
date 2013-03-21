# $OpenBSD: Makefile,v 1.11 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.0.3

SHARED_LIBS +=  assuan            1.0      # 2.0


CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/libassuan/
EXTRACT_SUFX=		.tar.bz2


MODULES=		devel/gettext \
			textproc/intltool

WANTLIB=		gpg-error
LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

CFLAGS+=		-fPIC

.include <bsd.port.mk>
