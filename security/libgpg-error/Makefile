# $OpenBSD: Makefile,v 1.17 2013/07/12 00:49:23 jca Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.11
CATEGORIES=	security devel

SHARED_LIBS +=  gpg-error            3.2      # 9.0

HOMEPAGE=	http://www.gnupg.org/related_software/libgpg-error.en.html

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgpg-error/}

MODULES=	devel/gettext

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
