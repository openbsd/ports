# $OpenBSD: Makefile,v 1.17 2005/12/24 22:32:53 sturm Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-1.1.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	security devel
SHARED_LIBS=		gpgme-pthread	16.0 \
			gpgme		16.0
MODGNU_SHARED_LIBS=	gpgme-pthread	'' \
			gpgme		''
LIBgpgme-pthread_ALIAS=	gpgme_pthread

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pthread

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/gpgme/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gpgsm

MODULES=		devel/gettext
RUN_DEPENDS=		:gnupg->=1.4.*:security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		gpg-error::security/libgpg-error

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
