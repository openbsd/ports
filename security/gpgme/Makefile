# $OpenBSD: Makefile,v 1.31 2014/11/01 09:34:40 sthen Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.5.1
CATEGORIES=		security devel

SHARED_LIBS +=  gpgme                19.0     # 24.0
SHARED_LIBS +=  gpgme-pthread        19.0     # 24.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan gpg-error

MASTER_SITES=		${MASTER_SITES_GNUPG:=gpgme/}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

MODULES=		devel/gettext
RUN_DEPENDS=		security/gnupg2
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		security/libgpg-error>=1.4 \
			security/libassuan

# needed for the regression tests
USE_GMAKE=		Yes


.include <bsd.port.mk>
