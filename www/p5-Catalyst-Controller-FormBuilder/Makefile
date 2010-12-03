# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT= 	Catalyst FormBuilder Base Controller

MODULES=	cpan
DISTNAME=	Catalyst-Controller-FormBuilder-0.04
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Tie-IxHash \
		www/p5-CGI-FormBuilder \
		www/p5-Catalyst-Runtime \
		devel/p5-Class-Data-Inheritable>=0.04 \
		devel/p5-Class-Inspector>=1.13
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
