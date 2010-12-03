# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=	File::Find::Rule adapted to Filesys::Virtual

MODULES=	cpan
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.22
REVISION=	0
CATEGORIES=	net devel
USE_GROFF =	Yes

# perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	devel/p5-File-Find-Rule \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
