# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:35 espie Exp $

COMMENT=	"File::Find::Rule adapted to Filesys::Virtual"

MODULES=	cpan
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.21
CATEGORIES=	net

# perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-File-Find-Rule-*:devel/p5-File-Find-Rule \
		:p5-Filesys-Virtual-Plain-*:sysutils/p5-Filesys-Virtual-Plain
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
