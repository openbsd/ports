# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:56 espie Exp $

COMMENT=	just-in-time compiler for HTML::Template

MODULES=	cpan
DISTNAME=	HTML-Template-JIT-0.05
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

RUN_DEPENDS=	::www/p5-HTML-Template \
		::devel/p5-Inline

# GPL/Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
