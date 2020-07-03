# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:38 sthen Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Server-FTP-0.08
REVISION=	1
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IO-stringy \
		devel/p5-POE \
		sysutils/p5-Filesys-Virtual

.include <bsd.port.mk>
