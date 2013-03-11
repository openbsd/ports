# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:17 espie Exp $

COMMENT=	File::Find::Rule adapted to Filesys::Virtual

MODULES=	cpan
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.22
REVISION=	0
CATEGORIES=	net devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
