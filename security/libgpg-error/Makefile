# $OpenBSD: Makefile,v 1.36 2016/12/22 08:17:49 ajacoutot Exp $

COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.26
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.13     # 21.0

HOMEPAGE=		http://www.gnupg.org/related_software/libgpg-error/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libgpg-error/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes

.include <bsd.port.mk>
