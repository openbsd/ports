# $OpenBSD: Makefile,v 1.50 2020/02/08 11:53:40 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.16.0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                4.2      # 12.0

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
