# $OpenBSD: Makefile,v 1.1.1.1 2006/11/16 22:32:56 espie Exp $

COMMENT=		"parse and create MySQL date objects"

MODULES=		cpan
DISTNAME=		DateTime-Format-MySQL-0.04
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-DateTime-Format-Builder

.include <bsd.port.mk>	
