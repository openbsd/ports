# $OpenBSD: Makefile,v 1.23 2014/09/20 05:40:03 ajacoutot Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.16
CATEGORIES=	security devel

SHARED_LIBS +=  gpg-error            3.4      # 12.1

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
