# $OpenBSD: Makefile,v 1.7 2002/06/09 05:24:31 wilfried Exp $

COMMENT=	"module to implement efficient mapping tables"

DISTNAME=	Unicode-Map8-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
NEED_VERSION=	1.504

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

BUILD_DEPENDS=	::converters/p5-Unicode-String

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
