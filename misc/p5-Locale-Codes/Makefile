# $OpenBSD: Makefile,v 1.5 2002/03/14 09:17:02 kevlo Exp $

COMMENT=	"module to provide access to ISO3166 and ISO639 codes"

DISTNAME=	Locale-Codes-2.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
NEED_VERSION=	1.504

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Locale

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
