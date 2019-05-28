# $OpenBSD: Makefile,v 1.20 2019/05/28 00:49:12 danj Exp $

COMMENT=		extracts files from Microsoft CAB archives

DISTNAME=		cabextract-1.8
CATEGORIES=		archivers
REVISION=		0

HOMEPAGE=		https://www.cabextract.org.uk/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
