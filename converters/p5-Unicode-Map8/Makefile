# $OpenBSD: Makefile,v 1.10 2004/01/17 15:58:07 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module to implement efficient mapping tables"

DISTNAME=	Unicode-Map8-0.12
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
