# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:57 naddy Exp $

COMMENT=	event-based FTP server on a virtual filesystem

MODULES=	cpan
PKG_ARCH=	*
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
