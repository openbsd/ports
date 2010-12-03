# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	Perl extension for retrieving bridge tables

MODULES=	cpan
DISTNAME=	SNMP-BridgeQuery-0.61
REVISION=	0
CATEGORIES=	devel net
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SNMP

.include <bsd.port.mk>
