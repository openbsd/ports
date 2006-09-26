# $OpenBSD: Makefile,v 1.2 2006/09/26 12:50:01 kevlo Exp $

COMMENT=	"represent a series of changes in annotate form"

DISTNAME=	Algorithm-Annotate-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5 
PKG_ARCH=	*

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Algorithm/}

BUILD_DEPENDS=	:p5-Algorithm-Diff->=1.1901:devel/p5-Algorithm-Diff
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
