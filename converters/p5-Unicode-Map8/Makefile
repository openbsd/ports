# $OpenBSD: Makefile,v 1.2 2001/05/05 23:11:44 lebel Exp $

COMMENT=	"module to implement efficient mapping tables"

DISTNAME=	Unicode-Map8-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
NEED_VERSION=	1.402

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Unicode

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/Unicode/String.pm::converters/p5-Unicode-String

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
