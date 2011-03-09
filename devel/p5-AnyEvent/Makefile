# $OpenBSD: Makefile,v 1.16 2011/03/09 07:52:27 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
