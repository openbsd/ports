# $OpenBSD: Makefile,v 1.6 2002/03/15 12:39:57 reinhard Exp $

BROKEN=	"bankruptcy - no distfiles available (see http://www.blender3d.com)"

COMMENT=	"3D creation software"
ONLY_FOR_ARCHS=	i386

V=		2.23
PKGNAME=	blender-${V}
DISTNAME=	blender-creator-${V}-linux-glibc2.1.2-i386-static
CATEGORIES=	graphics
NEED_VERSION=	1.510

HOMEPAGE=	http://www.blender.nl/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	"no commercial use"
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	"no commercial use"

MASTER_SITES=	ftp://ftp.blender.nl/pub/

RUN_DEPENDS=	::emulators/redhat/base

INSTALL_STRIP=
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/blender ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/blender
	${INSTALL_DATA} ${WRKSRC}/{README,copyright.txt} \
		${PREFIX}/share/examples/blender
	cd ${WRKSRC} && tar cf - plugins | \
		(cd ${PREFIX}/share/examples/blender && tar xf -)

.include <bsd.port.mk>
