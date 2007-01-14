# $OpenBSD: Makefile,v 1.4 2007/01/14 20:49:05 simon Exp $

COMMENT=	"presents a DAAP share as a VFS"

MODULES=	cpan
DISTNAME=	Filesys-Virtual-DAAP-0.04
CATEGORIES=	net

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
	${INSTALL} ${WRKSRC}/ftp_republish \
		${PREFIX}/share/examples/p5-Filesys-Virtual-DAAP

.include <bsd.port.mk>
