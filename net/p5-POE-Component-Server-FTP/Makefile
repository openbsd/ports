# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:54 espie Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
DISTNAME=	POE-Component-Server-FTP-0.08
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-POE \
		sysutils/p5-Filesys-Virtual

.include <bsd.port.mk>
