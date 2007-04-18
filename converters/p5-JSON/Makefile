# $OpenBSD: Makefile,v 1.3 2007/04/18 21:38:56 simon Exp $

COMMENT= 	"parse and convert to JSON (JavaScript Object Notation)"

DISTNAME=	JSON-1.10
CATEGORIES=	converters
MODULES=	cpan

MAINTAINER=	Genadijus Paleckis <rwx@openbsd.lt>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

RUN_DEPENDS=	::www/p5-libwww

.include <bsd.port.mk>
