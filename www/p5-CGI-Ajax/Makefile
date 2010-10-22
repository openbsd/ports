# $OpenBSD: Makefile,v 1.7 2010/10/22 19:24:42 jasper Exp $

COMMENT=	AJAX framework for perl

MODULES=	cpan
DISTNAME=	CGI-Ajax-0.706
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://pjax.sourceforge.net/

# Perl licence, javascript code is MIT-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	scripts

.include <bsd.port.mk>
