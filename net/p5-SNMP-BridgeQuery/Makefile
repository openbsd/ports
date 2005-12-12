# $OpenBSD: Makefile,v 1.2 2005/12/12 21:28:59 sturm Exp $

COMMENT=	"Perl extension for retrieving bridge tables"

DISTNAME=	SNMP-BridgeQuery-0.59
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SNMP/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SNMP

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
