# $OpenBSD: Makefile,v 1.7 2010/10/22 19:40:01 jasper Exp $

COMMENT=	presents a DAAP share as a VFS

MODULES=	cpan
DISTNAME=	Filesys-Virtual-DAAP-0.04
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-Class-Accessor-*:devel/p5-Class-Accessor \
		:p5-Net-DAAP-Client-*:net/p5-Net-DAAP-Client \
		:p5-Filesys-Virtual-Plain-*:sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP
	${INSTALL_DATA} ${WRKSRC}/ftp_republish \
		${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP

.include <bsd.port.mk>
