# $OpenBSD: Makefile,v 1.2 2001/09/16 17:02:02 naddy Exp $

COMMENT=	"3D creation software"
ONLY_FOR_ARCHS=	i386

PKGNAME=	blender-2.12
DISTNAME=	blender2.12-linux-glibc2.1.2-i386-static
CATEGORIES=	graphics
NEED_VERSION=	1.413
HOMEPAGE=	http://www.blender.nl/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} demo212.tgz LogicBricks212.tgz

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	"no commercial use"
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	"no commercial use"

MASTER_SITES=	ftp://ftp.blender.nl/pub/

RUN_DEPENDS=	/emul/linux/lib/libc.so.6::emulators/redhat/base

NO_BUILD=	Yes

DIRS=	plugins python 
DEMOS=	demo212 LogicBricks212 

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/blender ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/blender
	${INSTALL_DATA} ${WRKSRC}/{README,copyright.txt} \
		${PREFIX}/share/examples/blender
	cd ${WRKSRC} && tar cf - ${DIRS} | \
		(cd ${PREFIX}/share/examples/blender && tar xf -)
	cd ${WRKDIR} && tar cf - ${DEMOS} | \
		(cd ${PREFIX}/share/examples/blender && tar xf -)

.include <bsd.port.mk>
