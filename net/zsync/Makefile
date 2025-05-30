COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.3
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

# Artistic v2
PERMIT_PACKAGE=	Yes

WANTLIB += c m

SITES=		${HOMEPAGE}download/

AUTOCONF_VERSION=	2.65
CONFIGURE_STYLE=	autoconf

# check-zsyncmake fails because the checksum it's looking for was
# calculated with an earlier zsync, which uses different Hash-Lengths

.include <bsd.port.mk>
