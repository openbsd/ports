# $OpenBSD: Makefile,v 1.1.1.1 2005/01/07 19:47:45 sturm Exp $

COMMENT=	"Perl extension for retrieving bridge tables"

DISTNAME=	SNMP-BridgeQuery-0.58
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SNMP/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SNMP

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
