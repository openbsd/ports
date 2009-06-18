# $OpenBSD: Makefile,v 1.8 2009/06/18 11:08:25 jim Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-2.15
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
