# $OpenBSD: Makefile,v 1.5 2002/06/09 05:31:40 wilfried Exp $

COMMENT=		"per-line Perl profiler"

DISTNAME=		Devel-SmallProf-0.9
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
NEED_VERSION=		1.515

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Devel/}

BUILD_DEPENDS=  	:p5-Time-HiRes->=1.20:devel/p5-Time-HiRes
RUN_DEPENDS=    	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
