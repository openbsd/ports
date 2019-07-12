# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:54 sthen Exp $

COMMENT=	File::Find::Rule adapted to Filesys::Virtual

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.22
REVISION=	0
CATEGORIES=	net devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
