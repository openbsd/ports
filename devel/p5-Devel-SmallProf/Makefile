# $OpenBSD: Makefile,v 1.1.1.1 2001/06/03 17:52:08 shell Exp $

COMMENT=		"per-line Perl profiler"

DISTNAME=		Devel-SmallProf-0.9
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
NEED_VERSION=		1.414

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Devel

PERL_MODULES=   	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=  	${PERL_MODULES}/Time/HiRes.pm::devel/p5-Time-HiRes
RUN_DEPENDS=    	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
