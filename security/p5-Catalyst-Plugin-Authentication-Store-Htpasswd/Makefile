# $OpenBSD: Makefile,v 1.7 2010/10/18 21:41:46 espie Exp $

COMMENT= 	catalyst authentication via .htpasswd

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
REVISION=	1
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::security/p5-Authen-Htpasswd \
		::security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
