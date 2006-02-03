# $OpenBSD: Makefile,v 1.2 2006/02/03 16:52:38 msf Exp $

COMMENT=	"A simple tree object"

DISTNAME=	Tree-Simple-1.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tree/}

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	::devel/p5-Test-Exception \
		:p5-Test-Memory-Cycle->=1.02:devel/p5-Test-Memory-Cycle
REGRESS_DEPENDS= ${BUILD_DEPENDS}

PKG_ARCH=	*

.include <bsd.port.mk>
