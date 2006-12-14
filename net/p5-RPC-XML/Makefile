# $OpenBSD: Makefile,v 1.2 2006/12/14 06:16:59 sturm Exp $

COMMENT= 	"perl implementation of XML-RPC"

DISTNAME=	RPC-XML-0.59
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel perl5

MAINTAINER=	Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=RPC/}

USE_GMAKE=		Yes
BUILD_DEPENDS=		::www/p5-libwww
RUN_DEPENDS=		::www/p5-libwww \
			::textproc/p5-XML-Parser
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::www/mod_perl \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage


CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
