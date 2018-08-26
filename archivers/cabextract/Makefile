# $OpenBSD: Makefile,v 1.18 2018/08/26 20:46:21 sthen Exp $

COMMENT=		extracts files from Microsoft CAB archives

DISTNAME=		cabextract-1.7
REVISION=		0
CATEGORIES=		archivers

HOMEPAGE=		http://www.cabextract.org.uk/

MAINTAINER=		Steve Shockley <steve.shockley@shockley.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
