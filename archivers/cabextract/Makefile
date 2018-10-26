# $OpenBSD: Makefile,v 1.19 2018/10/26 20:09:45 sthen Exp $

COMMENT=		extracts files from Microsoft CAB archives

DISTNAME=		cabextract-1.8
CATEGORIES=		archivers

HOMEPAGE=		https://www.cabextract.org.uk/

MAINTAINER=		Steve Shockley <steve.shockley@shockley.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
