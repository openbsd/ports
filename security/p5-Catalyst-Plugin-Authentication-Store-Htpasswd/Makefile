# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"catalyst authentication via .htpasswd"

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::security/p5-Authen-Htpasswd \
		::security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
