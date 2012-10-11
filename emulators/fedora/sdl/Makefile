# $OpenBSD: Makefile,v 1.3 2012/10/11 13:57:35 ajacoutot Exp $

BROKEN=		needs an update to Fedora 10

COMMENT=	Linux SDL package based on Fedora Core 4

DISTNAME=	libSDL-fc4
PKGNAME=	fedora_sdl-4.0

# modified from fc4 originals with execstack -c
MASTER_SITES=	http://spacehopper.org/mirrors/

RUN_DEPENDS=	emulators/fedora/base>=4.0p9

do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}/usr/lib
	cd ${FEDORADIR}/usr/lib; ${TAR} xzf ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
