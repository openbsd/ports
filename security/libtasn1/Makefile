# $OpenBSD: Makefile,v 1.48 2019/11/23 12:13:33 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.15.0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                4.1      # 11.7

HOMEPAGE=		https://www.gnu.org/software/libtasn1/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
