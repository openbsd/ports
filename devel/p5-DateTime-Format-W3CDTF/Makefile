# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 17:39:15 jasper Exp $

COMMENT=		"parse and format W3CDTF datetime strings"

DISTNAME=		DateTime-Format-W3CDTF-0.04
CATEGORIES=		devel converters

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-DateTime
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
