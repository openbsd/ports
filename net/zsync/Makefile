# $OpenBSD: Makefile,v 1.6 2017/07/05 10:22:06 sthen Exp $

COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.2
REVISION=	1
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

# Artistic v2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
