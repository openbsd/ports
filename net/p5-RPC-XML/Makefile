# $OpenBSD: Makefile,v 1.4 2007/01/14 20:49:06 simon Exp $

COMMENT= 	"perl implementation of XML-RPC"

MODULES=	cpan
DISTNAME=	RPC-XML-0.59
CATEGORIES=	net devel

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
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
