# $OpenBSD: Makefile,v 1.21 2010/08/25 06:34:51 ajacoutot Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.1.5
REVISION=		1
CATEGORIES=     	security devel
SHARED_LIBS=		gpgme-pthread	17.0 \
			gpgme		17.0

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
RUN_DEPENDS=		:gnupg-<2:security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		gpg-error:libgpg-error->=1.4:security/libgpg-error

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
