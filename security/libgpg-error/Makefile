# $OpenBSD: Makefile,v 1.32 2016/06/15 21:20:48 ajacoutot Exp $

COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.23
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.11     # 19.0

HOMEPAGE=		http://www.gnupg.org/related_software/libgpg-error/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITES_GNUPG:=libgpg-error/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
