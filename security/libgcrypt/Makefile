# $OpenBSD: Makefile,v 1.8 2005/01/26 16:41:04 naddy Exp $

COMMENT=		"crypto library based on code used in GnuPG"

VERSION=		1.2.0
DISTNAME=		libgcrypt-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://www.gnu.org/directory/security/libgcrypt.html

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

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

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--disable-asm

.include <bsd.port.mk>
