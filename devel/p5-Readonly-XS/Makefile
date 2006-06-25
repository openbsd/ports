# $OpenBSD: Makefile,v 1.1.1.1 2006/06/25 14:53:11 espie Exp $

COMMENT= 	"create readonly variables faster"

SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Readonly

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Readonly/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
