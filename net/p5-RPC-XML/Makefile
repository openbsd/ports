# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:56 espie Exp $

COMMENT= 	perl implementation of XML-RPC

MODULES=	cpan
DISTNAME=	RPC-XML-0.59
CATEGORIES=	net devel
USE_GROFF =	Yes

MAINTAINER=	Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
RUN_DEPENDS=		::www/p5-libwww \
			::textproc/p5-XML-Parser
REGRESS_DEPENDS=	::www/mod_perl \
			::devel/p5-Net-Server \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
