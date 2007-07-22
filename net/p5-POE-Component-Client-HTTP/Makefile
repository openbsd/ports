# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:10:37 simon Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
DISTNAME=	POE-Component-Client-HTTP-0.82
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
