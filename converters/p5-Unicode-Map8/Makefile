# $OpenBSD: Makefile,v 1.8 2002/10/24 01:58:04 kevlo Exp $

COMMENT=	"module to implement efficient mapping tables"

DISTNAME=	Unicode-Map8-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

BUILD_DEPENDS=	::converters/p5-Unicode-String
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
