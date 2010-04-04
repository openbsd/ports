# $OpenBSD: Makefile,v 1.1.1.1 2010/04/04 16:03:52 jasper Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-1.0.0

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

.if ${MACHINE_ARCH} == "amd64"
CFLAGS+=		-fPIC
.endif

.include <bsd.port.mk>
