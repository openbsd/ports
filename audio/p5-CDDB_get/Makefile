# $OpenBSD: Makefile,v 1.12 2013/03/10 22:55:04 espie Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		FONKIE
USE_GROFF =		Yes

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
