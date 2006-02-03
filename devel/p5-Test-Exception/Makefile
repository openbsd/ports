# $OpenBSD: Makefile,v 1.3 2006/02/03 16:21:00 msf Exp $

COMMENT= 	"test functions for exception based code"

DISTNAME=	Test-Exception-0.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS= 		::devel/p5-Sub-Uplevel
REGRESS_DEPENDS=	::devel/p5-Pod-Coverage \
			::devel/p5-IO-String

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
