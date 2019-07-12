# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:38 sthen Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28.1
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		FONKIE

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
