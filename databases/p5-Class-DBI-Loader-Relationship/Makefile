# $OpenBSD: Makefile,v 1.2 2006/12/14 18:30:36 dassow Exp $

COMMENT=	"easier relationship specification in CDBI::L"

MODULES=	cpan
DISTNAME=	Class-DBI-Loader-Relationship-1.2
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-Class-DBI-Loader \
		::textproc/p5-Lingua-EN-Inflect-Number

.include <bsd.port.mk>
