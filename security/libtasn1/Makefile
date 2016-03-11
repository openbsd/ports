# $OpenBSD: Makefile,v 1.37 2016/03/11 19:59:16 naddy Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.7
CATEGORIES=		security

SHARED_LIBS +=  tasn1                3.5      # 11.1

HOMEPAGE=		https://www.gnu.org/software/gnutls/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
