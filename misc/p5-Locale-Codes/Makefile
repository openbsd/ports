# $OpenBSD: Makefile,v 1.10 2002/11/27 22:26:34 pvalchev Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

COMMENT=	"module to provide access to ISO3166 and ISO639 codes"

DISTNAME=	Locale-Codes-2.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Locale/}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
