# $OpenBSD: Makefile,v 1.30 2014/09/12 13:24:30 jasper Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.3.1
CATEGORIES=     	security devel
REVISION=		1

SHARED_LIBS +=  gpgme                18.0     # 19.0
SHARED_LIBS +=  gpgme-pthread        18.0     # 19.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan gpg-error

MASTER_SITES=		${MASTER_SITES_GNUPG:=gpgme/}
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


.include <bsd.port.mk>
