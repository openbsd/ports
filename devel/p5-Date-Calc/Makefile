# $OpenBSD: Makefile,v 1.10 2002/10/29 02:16:44 kevlo Exp $

COMMENT=	"date calculations for the Gregorian calendar"

DISTNAME=	Date-Calc-5.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Date/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:p5-Bit-Vector->=6.2:math/p5-Bit-Vector
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
