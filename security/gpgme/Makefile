# $OpenBSD: Makefile,v 1.27 2013/03/11 11:41:25 espie Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.3.1
CATEGORIES=     	security devel
REVISION=		0

SHARED_LIBS +=  gpgme                18.0     # 19.0
SHARED_LIBS +=  gpgme-pthread        18.0     # 19.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan gpg-error

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/gpgme/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-gpg=${LOCALBASE}/bin/gpg \
			--with-gpgsm=no \
			--with-gpgconf=no \
			--with-g13=no \
			--without-pth \
			--without-pth-test

MODULES=		devel/gettext
RUN_DEPENDS=		security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		security/libgpg-error>=1.4 \
			security/libassuan

# needed for the regression tests
USE_GMAKE=		Yes

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
