# $OpenBSD: Makefile,v 1.3 2010/11/03 20:10:59 sthen Exp $

COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Artistic v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu
USE_GROFF=		Yes

.include <bsd.port.mk>
