# $OpenBSD: Makefile,v 1.13 2010/11/19 22:31:36 espie Exp $

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

RUN_DEPENDS=		security/p5-Digest-SHA1
			
MODULES=		cpan
USE_GROFF =		Yes

.include <bsd.port.mk>
