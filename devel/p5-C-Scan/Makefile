# $OpenBSD: Makefile,v 1.7 2002/06/09 05:31:40 wilfried Exp $

COMMENT=	"module to scan C language files"

DISTNAME=	C-Scan-0.74
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=C/}

BUILD_DEPENDS=	:p5-Data-Flow->=0.05:devel/p5-Data-Flow
RUN_DEPEDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
