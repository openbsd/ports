# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:58 espie Exp $

COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Artistic v2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes

.include <bsd.port.mk>
