# $OpenBSD: Makefile,v 1.4 2004/02/24 19:48:16 naddy Exp $

COMMENT=		"crypto library based on code used in GnuPG"

VERSION=		1.1.12
DISTNAME=		libgcrypt-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		security

HOMEPAGE=		http://www.gnu.org/directory/security/libgcrypt.html
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/libgcrypt/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/libgcrypt/ \
		http://ftp.planetmirror.com/pub/gnupg/alpha/libgcrypt/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/libgcrypt/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/libgcrypt/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--disable-asm
CONFIGURE_ENV=		MAKEINFO="makeinfo --no-split"

pre-configure:
	@rm -f ${WRKSRC}/doc/gcrypt.info

.include <bsd.port.mk>
