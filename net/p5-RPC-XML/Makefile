# $OpenBSD: Makefile,v 1.10 2012/04/07 19:59:59 sthen Exp $

COMMENT=	perl implementation of XML-RPC

MODULES=	cpan
DISTNAME=	RPC-XML-0.76
CATEGORIES=	net devel
USE_GROFF =	Yes

MAINTAINER=	Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-libwww \
			textproc/p5-XML-Parser
REGRESS_DEPENDS=	www/mod_perl \
			devel/p5-DateTime-Format-ISO8601 \
			devel/p5-Net-Server \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
