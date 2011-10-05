# $OpenBSD: Makefile,v 1.2 2011/10/05 17:30:58 jasper Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
DISTNAME=	HTML-Quoted-0.03
REVISION=	0

CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
