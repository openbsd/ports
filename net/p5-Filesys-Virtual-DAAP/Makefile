# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:36 sthen Exp $

COMMENT=	presents a DAAP share as a VFS

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Filesys-Virtual-DAAP-0.04
REVISION=	1
CATEGORIES=	net

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		net/p5-Net-DAAP-Client \
		sysutils/p5-Filesys-Virtual-Plain
BUILD_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP
	${INSTALL_DATA} ${WRKSRC}/ftp_republish \
		${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP

.include <bsd.port.mk>
