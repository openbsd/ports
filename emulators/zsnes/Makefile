# $OpenBSD: Makefile,v 1.13 2006/08/02 09:36:20 espie Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"Super Nintendo emulator for x86"
VERSION=		1.42
DISTNAME=		zsnes_${VERSION:S/./_/}
PKGNAME=		zsnes-${VERSION}
CATEGORIES=		emulators games
HOMEPAGE=		http://www.zsnes.com/

MAINTAINER=		Jonathan Schleifer <js@h3c.de>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zsnes/}
DISTFILES=		zsnes${VERSION:S/.//}src${EXTRACT_SUFX}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL X11 Xext c m pthread stdc++ usbhid z

BUILD_DEPENDS=		::devel/nasm \
			::devel/automake/1.4
LIB_DEPENDS=		SDL:sdl-*-!no_x11:devel/sdl \
			png.>=2::graphics/png

USE_X11=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-sdl-prefix=${LOCALBASE} \
			--with-png \
			--with-opengl \
			--target=${MACHINE}-unknown-openbsd${OPSYS_VER}
CONFIGURE_ENV+=		LDFLAGS="-lm" \
			CFLAGS="${CFLAGS:N-O*} -I${X11BASE}/include -I${LOCALBASE}/include/libpng"
ALL_TARGET=

WRKSRC=			${WRKDIST}/src

NO_REGRESS=		Yes

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
