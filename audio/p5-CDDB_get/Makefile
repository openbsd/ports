COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28.1
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		https://armin.emx.at/cddb/

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
