# $OpenBSD: Makefile,v 1.14 2008/10/26 10:39:27 landry Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.4.3
CATEGORIES=		security
SHARED_LIBS=		gcrypt	14.0

HOMEPAGE=		http://www.gnu.org/directory/security/libgcrypt.html

# GPLv2
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
BUILD_DEPENDS=		::print/transfig
WANTLIB=		c

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static

.if ${MACHINE_ARCH} != "hppa"
CONFIGURE_ARGS+=       --disable-asm
.endif

.include <bsd.port.mk>
