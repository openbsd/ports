# $OpenBSD: Makefile,v 1.10 2002/05/13 18:50:38 espie Exp $

COMMENT=	"tie class for a simple ASCII database"
DISTNAME=	AsciiDB-TagFile-1.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=AsciiDB/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
