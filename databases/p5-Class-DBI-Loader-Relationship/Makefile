# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:09 naddy Exp $

COMMENT=	easier relationship specification in CDBI::L

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Loader-Relationship-1.2
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Class-DBI-Loader \
		textproc/p5-Lingua-EN-Inflect-Number

.include <bsd.port.mk>
