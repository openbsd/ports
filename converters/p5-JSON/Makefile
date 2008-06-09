# $OpenBSD: Makefile,v 1.6 2008/06/09 18:58:47 simon Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-2.10
CATEGORIES=	converters
MODULES=	cpan

MAINTAINER=	Genadijus Paleckis <rwx@openbsd.lt>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-libwww
REGRESS_DEPENDS=::converters/p5-JSON-XS

.include <bsd.port.mk>
