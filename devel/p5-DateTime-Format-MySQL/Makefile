# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=		parse and create MySQL date objects

MODULES=		cpan
DISTNAME=		DateTime-Format-MySQL-0.04
REVISION=		0
CATEGORIES=		devel converters
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-DateTime-Format-Builder

.include <bsd.port.mk>	
