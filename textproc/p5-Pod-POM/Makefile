# $OpenBSD: Makefile,v 1.10 2010/09/09 19:32:25 jasper Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
DISTNAME=	Pod-POM-0.27
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
