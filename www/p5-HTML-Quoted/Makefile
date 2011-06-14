# $OpenBSD: Makefile,v 1.1.1.1 2011/06/14 11:35:21 robert Exp $

COMMENT=	extract structure of quoted HTML mail message

MODULES=	cpan
DISTNAME=	HTML-Quoted-0.03

CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	www/p5-HTML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
