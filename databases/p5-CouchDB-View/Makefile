# $OpenBSD: Makefile,v 1.2 2010/10/18 17:06:07 espie Exp $

COMMENT=		handle and create CouchDB views in Perl

DISTNAME=		CouchDB-View-0.003
CATEGORIES=		databases

MODULES=		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::converters/p5-JSON-XS \
			::devel/p5-Data-Dump-Streamer \
			::www/p5-URI

.include <bsd.port.mk>
