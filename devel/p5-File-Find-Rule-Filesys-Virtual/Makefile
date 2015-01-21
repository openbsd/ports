# $OpenBSD: Makefile,v 1.11 2015/01/21 14:27:57 sthen Exp $

COMMENT=	File::Find::Rule adapted to Filesys::Virtual

MODULES=	cpan
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.22
REVISION=	0
CATEGORIES=	net devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
