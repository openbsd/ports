# $OpenBSD: Makefile,v 1.1.1.1 2004/12/09 03:48:39 kevlo Exp $

COMMENT=	"simple interface to subversion's editor interface"

DISTNAME=	SVN-Simple-0.26
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/C/CL/CLKAO/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-SVN->=1.1.1:devel/subversion,-perl
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
