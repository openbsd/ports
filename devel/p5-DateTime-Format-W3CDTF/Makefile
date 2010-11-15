# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:02 espie Exp $

COMMENT=		parse and format W3CDTF datetime strings

MODULES=		cpan
DISTNAME=		DateTime-Format-W3CDTF-0.05
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
