# $OpenBSD: Makefile,v 1.10 2006/03/04 15:10:31 sturm Exp $

COMMENT=		"crypto library based on code used in GnuPG"

VERSION=		1.2.0
DISTNAME=		libgcrypt-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		security
SHARED_LIBS=		gcrypt	12.1
MODGNU_SHARED_LIBS=	gcrypt	''

HOMEPAGE=		http://www.gnu.org/directory/security/libgcrypt.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/libgcrypt/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/libgcrypt/ \
		http://ftp.planetmirror.com/pub/gnupg/libgcrypt/ \
		http://sunsite.dk/pub/security/gcrypt/libgcrypt/ \
		http://ftp.linux.it/pub/mirrors/gnupg/libgcrypt/

LIB_DEPENDS=		gpg-error::security/libgpg-error

USE_LIBTOOL=		Yes

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--disable-asm

.include <bsd.port.mk>
