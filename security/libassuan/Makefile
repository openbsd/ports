# $OpenBSD: Makefile,v 1.7 2010/11/20 17:22:43 espie Exp $

COMMENT=	IPC library used by GnuPG and gpgme

DISTNAME=	libassuan-2.0.1
REVISION=	0

SHARED_LIBS +=  assuan            0.1      # 1.0


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

WANTLIB=		gpg-error
LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

CFLAGS+=		-fPIC

.include <bsd.port.mk>
