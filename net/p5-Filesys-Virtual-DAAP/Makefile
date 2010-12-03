# $OpenBSD: Makefile,v 1.9 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT=	presents a DAAP share as a VFS

MODULES=	cpan
DISTNAME=	Filesys-Virtual-DAAP-0.04
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		net/p5-Net-DAAP-Client \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP
	${INSTALL_DATA} ${WRKSRC}/ftp_republish \
		${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP

.include <bsd.port.mk>
