# $OpenBSD: Makefile,v 1.9 2013/10/11 23:50:30 naddy Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
DISTNAME=	POE-Component-Server-FTP-0.08
REVISION=	0
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-POE \
		sysutils/p5-Filesys-Virtual

.include <bsd.port.mk>
