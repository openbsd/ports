# $OpenBSD: Makefile,v 1.1.1.1 2003/04/13 16:32:22 sturm Exp $

COMMENT=	"parses long function arguments"

DISTNAME=	Getargs-Long-0.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Getargs/}

MAINTAINER=	Andrew Dalgleish <openbsd@andrewdalgleish.dyndns.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Log-Agent->=0.105:devel/p5-Log-Agent

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
