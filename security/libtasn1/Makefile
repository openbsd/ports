# $OpenBSD: Makefile,v 1.51 2021/05/15 16:02:07 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.17.0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                4.2      # 12.1

HOMEPAGE=		https://www.gnu.org/software/libtasn1/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu

# Allow building with base-gcc
CFLAGS +=		-std=gnu99

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
