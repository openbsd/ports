# $OpenBSD: Makefile,v 1.46 2019/07/12 20:49:05 sthen Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.13
REVISION=		0
CATEGORIES=		security

SHARED_LIBS +=  tasn1                4.0      # 11.5

HOMEPAGE=		https://www.gnu.org/software/libtasn1/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
