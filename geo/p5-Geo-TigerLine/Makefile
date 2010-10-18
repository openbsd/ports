# $OpenBSD: Makefile,v 1.2 2010/10/18 18:13:12 espie Exp $

COMMENT=	parse TIGER/Line geographic data
MODULES=	cpan
DISTNAME=	Geo-TigerLine-0.02
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Carp-Assert \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable

.include <bsd.port.mk>
