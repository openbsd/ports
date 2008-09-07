# $OpenBSD: Makefile,v 1.2 2008/09/07 09:15:35 simon Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
DISTNAME=	POE-Component-Client-HTTP-0.85
CATEGORIES=	net www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-POE-Component-Client-Keepalive \
		::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
