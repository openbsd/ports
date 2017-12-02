# $OpenBSD: Makefile,v 1.39 2017/12/02 12:44:33 edd Exp $

COMMENT=		GnuPG Made Easy

DISTNAME=		gpgme-1.9.0
CATEGORIES=		security devel

SHARED_LIBS +=  gpgme                21.0     # 29.0

HOMEPAGE=		http://www.gnupg.org/gpgme.html

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan c gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=gpgme/}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--enable-languages=''

# Requires gpgsm (gnupg 2.x) during build, but can run with any gnupg.
BUILD_DEPENDS=		gnupg->=2:security/gnupg2
# gnupg-* is normally the default anyway, but gnupg1 overrides PKGSPEC
# so we must be explicit here.
RUN_DEPENDS=		gnupg-*:security/gnupg
LIB_DEPENDS=		devel/gettext \
			security/libgpg-error>=1.4 \
			security/libassuan

# The tests target gpg2. Running with gpg version 1 will give:
# `./t-support.h:160: GPGME: Invalid crypto engine'
# https://dev.gnupg.org/T3512
TEST_DEPENDS +=		security/gnupg2
pre-test:
	ln -sf ${LOCALBASE}/bin/gpg2 ${WRKDIR}/bin/gpg

# needed for the regression tests
USE_GMAKE=		Yes

.include <bsd.port.mk>
