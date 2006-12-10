# $OpenBSD: Makefile,v 1.2 2006/12/10 11:09:23 espie Exp $

COMMENT=		"parse and create MySQL date objects"

MODULES=		cpan
DISTNAME=		DateTime-Format-MySQL-0.04
CATEGORIES=		devel converters

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-DateTime-Format-Builder

.include <bsd.port.mk>	
