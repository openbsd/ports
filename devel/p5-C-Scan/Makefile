# $OpenBSD: Makefile,v 1.8 2002/08/02 00:26:56 naddy Exp $

COMMENT=	"module to scan C language files"

DISTNAME=	C-Scan-0.74
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=C/}

BUILD_DEPENDS=	:p5-Data-Flow->=0.05:devel/p5-Data-Flow
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
