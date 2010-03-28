# $OpenBSD: Makefile,v 1.1.1.1 2010/03/28 19:33:11 jasper Exp $

COMMENT=		handle and create CouchDB views in Perl

DISTNAME=		CouchDB-View-0.003
CATEGORIES=		databases

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::converters/p5-JSON-XS \
			::devel/p5-Data-Dump-Streamer \
			::www/p5-URI

.include <bsd.port.mk>
