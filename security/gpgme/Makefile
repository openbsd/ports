# $OpenBSD: Makefile,v 1.14 2005/03/13 13:01:26 alek Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-1.0.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	security devel

HOMEPAGE=		http://www.gnupg.org/gpgme.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

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
