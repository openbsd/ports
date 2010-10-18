# $OpenBSD: Makefile,v 1.12 2010/10/18 18:36:53 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
