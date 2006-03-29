# $OpenBSD: Makefile,v 1.3 2006/03/29 21:30:23 msf Exp $

COMMENT= 	"check for pod coverage in your distribution"

DISTNAME=	Test-Pod-Coverage-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Pod-Coverage

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
