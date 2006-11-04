# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 15:26:25 espie Exp $

COMMENT=        "visitor-style traversal of Perl data structures"

DISTNAME=	Data-Visitor-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

RUN_DEPENDS=	::devel/p5-Class-Accessor

REGRESS_DEPENDS=${RUN_DEPENDS} \
		:p5-Test-MockObject->=1.04:devel/p5-Test-MockObject \
		::devel/p5-Test-use-ok

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
