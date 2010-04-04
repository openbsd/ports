# $OpenBSD: Makefile,v 1.2 2010/04/04 16:07:52 jasper Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-1.0.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	security devel

# LGPLv2.1+
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
