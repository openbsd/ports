# $OpenBSD: Makefile,v 1.24 2014/10/16 09:27:14 ajacoutot Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.17
CATEGORIES=	security devel

SHARED_LIBS +=  gpg-error            3.5      # 13.0

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
