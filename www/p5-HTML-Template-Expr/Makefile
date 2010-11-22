# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:51 espie Exp $

COMMENT=	use HTML Templates which allows expressions

MODULES=	cpan
DISTNAME=	HTML-Template-Expr-0.07
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://sourceforge.net/projects/html-template/

MAINTAINER=	Jim Dew <jdew@yggdrasil.ca>

# GPL/Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Template \
		devel/p5-Parse-RecDescent

.include <bsd.port.mk>
