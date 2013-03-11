# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:13 espie Exp $

COMMENT=	provide framework for multiple event loops

MODULES=	cpan
# N.B. updates to 5.29 and up require the 4.x p5-EV API
DISTNAME=	AnyEvent-5.28
# pad PKGNAME; previous ver was 5.201
PKGNAME=	p5-${DISTNAME}0
CATEGORIES=	devel
CPAN_AUTHOR=	MLEHMANN
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
