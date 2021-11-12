# $OpenBSD: Makefile,v 1.52 2021/11/12 08:13:06 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.18.0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                4.2      # 12.2

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
