# $OpenBSD: Makefile,v 1.5 2007/12/11 19:52:19 merdely Exp $

COMMENT=	File::Find::Rule adapted to Filesys::Virtual

MODULES=	cpan
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.22
CATEGORIES=	net

# perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-File-Find-Rule-*:devel/p5-File-Find-Rule \
		:p5-Filesys-Virtual-Plain-*:sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
