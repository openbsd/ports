# $OpenBSD: Makefile,v 1.6 2002/06/07 21:37:11 wilfried Exp $

COMMENT=	"module for managing newsrc files"

DISTNAME=	News-Newsrc-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=News/}

BUILD_DEPENDS=	::math/p5-Set-IntSpan
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
