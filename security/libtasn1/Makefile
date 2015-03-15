# $OpenBSD: Makefile,v 1.32 2015/03/15 08:43:46 ajacoutot Exp $

COMMENT=		Abstract Syntax Notation One structure parser library

DISTNAME=		libtasn1-4.3
CATEGORIES=		security

SHARED_LIBS +=  tasn1                3.4      # 10.0

HOMEPAGE=		https://www.gnu.org/software/gnutls/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=libtasn1/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
