# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:04 merdely Exp $

COMMENT=		parse and format W3CDTF datetime strings

MODULES=		cpan
DISTNAME=		DateTime-Format-W3CDTF-0.04
CATEGORIES=		devel converters

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-DateTime
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
