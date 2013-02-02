# $OpenBSD: Makefile,v 1.11 2013/02/02 17:19:58 jasper Exp $

COMMENT=		perl interface to query for cddb-information

DISTNAME=		CDDB_get-2.28
CATEGORIES=		audio

HOMEPAGE=		http://armin.emx.at/cddb/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		FONKIE
USE_GROFF =		Yes

post-patch:
	@cp ${WRKSRC}/cddb.pl ${WRKSRC}/cddb

.include <bsd.port.mk>
