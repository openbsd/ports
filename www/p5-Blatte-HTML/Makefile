# $OpenBSD: Makefile,v 1.3 2001/05/14 22:00:05 naddy Exp $

COMMENT=	"Blatte functions to generate (X)HTML"

DISTNAME=	Blatte-HTML-0.9
PKGNAME=	p5-${DISTNAME}
HOMEPAGE=	http://www.blatte.org/

CATEGORIES=	www perl5
NEED_VERSION=	1.387
MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= 	../by-authors/id/B/BO/BOBG/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/Blatte.pm::textproc/p5-Blatte \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/HTML/Entities.pm::www/p5-HTML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
