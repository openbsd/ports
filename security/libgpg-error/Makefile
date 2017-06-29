# $OpenBSD: Makefile,v 1.38 2017/06/29 13:59:03 jca Exp $

COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.27
REVISION=		0
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.14     # 22.0

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
