# $OpenBSD: Makefile,v 1.3 2009/06/19 12:51:05 simon Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
DISTNAME=	POE-Component-Client-HTTP-0.88
CATEGORIES=	net www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-POE \
		:p5-POE-Component-Client-Keepalive->=0.25:net/p5-POE-Component-Client-Keepalive \
		::www/p5-URI \
		::www/p5-libwww

REGRESS_DEPENDS=::devel/p5-Test-POE-Server-TCP

.include <bsd.port.mk>
