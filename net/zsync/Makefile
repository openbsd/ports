# $OpenBSD: Makefile,v 1.5 2015/02/17 19:47:01 naddy Exp $

COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.2
REVISION=	0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Artistic v2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
