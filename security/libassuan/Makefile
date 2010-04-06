# $OpenBSD: Makefile,v 1.3 2010/04/06 12:20:03 jasper Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-1.0.5

CATEGORIES=	security devel

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/libassuan/
EXTRACT_SUFX=		.tar.bz2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

CFLAGS+=		-fPIC

.include <bsd.port.mk>
