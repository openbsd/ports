COMMENT=	CLI to work with Protomaps PMTiles archives

V=		1.31.1
MODGO_MODNAME=	github.com/protomaps/go-pmtiles
MODGO_VERSION=	v$V

DISTNAME=	go-pmtiles-${MODGO_VERSION}
PKGNAME=	pmtiles-$V

CATEGORIES=	geo

HOMEPAGE=	https://docs.protomaps.com/pmtiles/cli

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

post-install:
	mv ${PREFIX}/bin/{go-,}pmtiles

.include "modules.inc"

.include <bsd.port.mk>
