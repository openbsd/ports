# $OpenBSD: Makefile,v 1.3 2006/01/03 09:44:48 steven Exp $

COMMENT=	"parses long function arguments"

DISTNAME=	Getargs-Long-1.1001
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Getargs/}

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Log-Agent->=0.105:devel/p5-Log-Agent

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
