# $OpenBSD: Makefile,v 1.4 2010/04/27 14:40:12 pea Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.0.0

SHARED_LIBS=   assuan 0.0

CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/libassuan/
EXTRACT_SUFX=		.tar.bz2

USE_LIBTOOL=		Yes

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		gpg-error::security/libgpg-error

CONFIGURE_STYLE=	gnu

CFLAGS+=		-fPIC

.include <bsd.port.mk>
