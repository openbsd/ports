# $OpenBSD: Makefile,v 1.12 2007/09/21 06:00:11 steven Exp $

COMMENT=		crypto library based on code used in GnuPG

VERSION=		1.2.4
DISTNAME=		libgcrypt-${VERSION}
CATEGORIES=		security
SHARED_LIBS=		gcrypt	13.0

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

MODULES=		devel/gettext
LIB_DEPENDS=		gpg-error::security/libgpg-error

USE_LIBTOOL=		Yes

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--disable-asm

.include <bsd.port.mk>
