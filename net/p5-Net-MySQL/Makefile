# $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:40 sthen Exp $

COMMENT=		Pure Perl MySQL network protocol interface

VERSION=		0.09
DISTNAME=		Net-MySQL-${VERSION}
REVISION=		1
CATEGORIES=		net

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Digest-SHA1-*:security/p5-Digest-SHA1
			
MODULES=		cpan

.include <bsd.port.mk>
