# $OpenBSD: Makefile,v 1.12 2004/08/06 16:06:04 espie Exp $

SHARED_ONLY=	Yes

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
