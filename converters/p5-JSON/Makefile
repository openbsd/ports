# $OpenBSD: Makefile,v 1.10 2010/10/18 17:06:06 espie Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-2.21
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Genadijus Paleckis <rwx@openbsd.lt>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-libwww
REGRESS_DEPENDS=::converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
