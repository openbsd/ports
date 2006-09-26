# $OpenBSD: Makefile,v 1.5 2006/09/26 13:48:46 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	"recursively copy Perl datatypes"

DISTNAME=	Clone-0.20
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Clone/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Taint-Runtime

.include <bsd.port.mk>
