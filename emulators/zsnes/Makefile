# $OpenBSD: Makefile,v 1.25 2013/06/04 18:41:42 naddy Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		Super Nintendo emulator for x86
VERSION=		1.42
DISTNAME=		zsnes_${VERSION:S/./_/}
PKGNAME=		zsnes-${VERSION}
REVISION=		0
CATEGORIES=		emulators games
HOMEPAGE=		http://www.zsnes.com/

MAINTAINER=		Jonathan Schleifer <js@h3c.de>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zsnes/}
DISTFILES=		zsnes${VERSION:S/.//}src${EXTRACT_SUFX}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		GL SDL c m png pthread stdc++ z

BUILD_DEPENDS=		devel/nasm
LIB_DEPENDS=		sdl-*-!no_x11:devel/sdl \
			graphics/png

USE_GROFF=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ARGS=		--with-sdl-prefix=${LOCALBASE} \
			--with-png \
			--with-opengl \
			--target=${MACHINE}-unknown-openbsd${OSREV}
CONFIGURE_ENV+=		LDFLAGS="-lm" \
			CFLAGS="${CFLAGS:N-O*} -I${X11BASE}/include"
ALL_TARGET=

WRKSRC=			${WRKDIST}/src

NO_TEST=		Yes

post-extract:
	rm -fr ${WRKSRC}/obj

post-patch:
	cd ${WRKSRC} && AUTOMAKE_VERSION=1.4 ${LOCALBASE}/bin/aclocal

DOCSDIR=		${PREFIX}/share/doc/zsnes

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/Linux/*.* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/images
	${INSTALL_DATA} ${WRKDIST}/docs/Linux/images/* ${DOCSDIR}/images

.include <bsd.port.mk>
