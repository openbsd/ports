# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=		parse and format W3CDTF datetime strings

MODULES=		cpan
DISTNAME=		DateTime-Format-W3CDTF-0.05
REVISION=		0
CATEGORIES=		devel converters
USE_GROFF =		Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		devel/p5-DateTime
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
