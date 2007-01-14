# $OpenBSD: Makefile,v 1.3 2007/01/14 20:49:06 simon Exp $

COMMENT=	"Perl extension for retrieving bridge tables"

MODULES=	cpan
DISTNAME=	SNMP-BridgeQuery-0.59
CATEGORIES=	devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SNMP

.include <bsd.port.mk>
