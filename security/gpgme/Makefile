# $OpenBSD: Makefile,v 1.15 2005/07/10 15:10:17 couderc Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-1.0.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	security devel

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

.include <bsd.port.mk>
