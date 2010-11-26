# $OpenBSD: Makefile,v 1.24 2010/11/26 07:51:00 espie Exp $

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
WANTLIB=		pthread gpg-error

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/gpgme/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gpgsm

MODULES=		devel/gettext
RUN_DEPENDS=		security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		security/libgpg-error>=1.4

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
