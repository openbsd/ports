# $OpenBSD: Makefile,v 1.5 2007/09/15 20:38:24 merdely Exp $

COMMENT=	use HTML Templates which allows expressions

MODULES=	cpan
DISTNAME=	HTML-Template-Expr-0.07
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/html-template/

MAINTAINER=	Jim Dew <jdew@yggdrasil.ca>

# GPL/Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-HTML-Template-*:www/p5-HTML-Template \
		:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent

.include <bsd.port.mk>
