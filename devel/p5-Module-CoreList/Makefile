# $OpenBSD: Makefile,v 1.12 2008/09/29 22:54:15 simon Exp $

COMMENT=	see what modules shipped with versions of Perl
COMES_WITH=	4.5

MODULES=	cpan
DISTNAME=	Module-CoreList-2.15
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-version

.include <bsd.port.mk>
