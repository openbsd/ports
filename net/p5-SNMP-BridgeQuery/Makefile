# $OpenBSD: Makefile,v 1.5 2008/05/08 22:44:13 espie Exp $

COMMENT=	Perl extension for retrieving bridge tables

MODULES=	cpan
DISTNAME=	SNMP-BridgeQuery-0.61
CATEGORIES=	devel net

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SNMP

.include <bsd.port.mk>
