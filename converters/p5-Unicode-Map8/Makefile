# $OpenBSD: Makefile,v 1.11 2004/06/26 07:35:06 xsa Exp $

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

RUN_DEPENDS=	::converters/p5-Unicode-String
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
