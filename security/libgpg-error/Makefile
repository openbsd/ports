# $OpenBSD: Makefile,v 1.29 2016/03/11 19:59:16 naddy Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.21
CATEGORIES=	security devel
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  gpg-error            3.9      # 17.0

HOMEPAGE=	http://www.gnupg.org/related_software/libgpg-error/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgpg-error/}

MODULES=	devel/gettext

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
