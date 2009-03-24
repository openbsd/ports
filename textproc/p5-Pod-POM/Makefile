# $OpenBSD: Makefile,v 1.8 2009/03/24 19:08:36 jasper Exp $

COMMENT=	convert Pod documents into a simple object model form

MODULES=	cpan
DISTNAME=	Pod-POM-0.24
CATEGORIES=	textproc

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-File-Slurp \
			::devel/p5-Test-Differences \
			:p5-YAML->=0.68:devel/p5-YAML

.include <bsd.port.mk>
