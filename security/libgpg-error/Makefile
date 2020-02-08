# $OpenBSD: Makefile,v 1.52 2020/02/08 12:16:37 ajacoutot Exp $

COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.37
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.20     # 28.0

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
