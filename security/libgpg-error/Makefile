# $OpenBSD: Makefile,v 1.54 2020/08/25 09:01:29 ajacoutot Exp $

COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.39
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.22     # 30.0

HOMEPAGE=		https://www.gnupg.org/software/libgpg-error/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libgpg-error/}

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
