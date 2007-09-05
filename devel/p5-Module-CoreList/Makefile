# $OpenBSD: Makefile,v 1.10 2007/09/05 16:20:34 jasper Exp $

COMMENT=	see what modules shipped with versions of Perl

MODULES=	cpan
DISTNAME=	Module-CoreList-2.12
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-version

.include <bsd.port.mk>
