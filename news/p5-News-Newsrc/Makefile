# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:39 fgsch Exp $

COMMENT=	"module for managing newsrc files"

DISTNAME=	News-Newsrc-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=News/}

BUILD_DEPENDS=	:p5-Set-IntSpan->=1.07:math/p5-Set-IntSpan
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
