# $OpenBSD: Makefile,v 1.1.1.1 2004/06/10 01:36:18 msf Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT= 	"tools to test taintedness"

DISTNAME=	Test-Taint-1.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

REGRESS_DEPENDS= ::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
