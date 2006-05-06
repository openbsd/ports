# $OpenBSD: Makefile,v 1.1.1.1 2006/05/06 17:07:39 msf Exp $

COMMENT=	"use familiar style on method naming"

DISTNAME=	capitalization-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	perl5 devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MI/MIYAGAWA/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
