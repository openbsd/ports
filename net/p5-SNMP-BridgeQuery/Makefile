# $OpenBSD: Makefile,v 1.4 2007/07/29 22:43:48 simon Exp $

COMMENT=	Perl extension for retrieving bridge tables

MODULES=	cpan
DISTNAME=	SNMP-BridgeQuery-0.61
CATEGORIES=	devel

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SNMP

.include <bsd.port.mk>
