# $OpenBSD: Makefile,v 1.9 2009/05/11 19:34:19 jasper Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
DISTNAME=	Pod-POM-0.25
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-File-Slurp \
			::devel/p5-Test-Differences

.include <bsd.port.mk>
