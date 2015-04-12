# $OpenBSD: Makefile,v 1.26 2015/04/12 04:44:42 ajacoutot Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.19
CATEGORIES=	security devel

SHARED_LIBS +=  gpg-error            3.7      # 15.0

HOMEPAGE=	http://www.gnupg.org/related_software/libgpg-error/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgpg-error/}

MODULES=	devel/gettext

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
