# $OpenBSD: Makefile,v 1.6 2002/07/17 21:29:06 wcobb Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"Super Nintendo emulator for x86"
VERSION=		1.36
DISTNAME=		zsnes-${VERSION}
CATEGORIES=		emulators games
HOMEPAGE=		http://www.zsnes.com/
NEED_VERSION=		1.507

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zsnes/}
DISTFILES=		zsnes${VERSION:S/.//}src${EXTRACT_SUFX}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		nasm::devel/nasm
LIB_DEPENDS=		SDL.:sdl-*-!no_x11:devel/sdl \
			png.2::graphics/png

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-sdl-prefix=${LOCALBASE} \
			--with-png \
			--with-opengl \
			--target=${MACHINE}-unknown-openbsd${OPSYS_VER}
CONFIGURE_ENV+=		LDFLAGS="-lm" CFLAGS="${CFLAGS:N-O*}"
ALL_TARGET=

DOCS=			opengl.txt readme.txt srcinfo.txt todo.txt \
			whatsnew.txt

WRKSRC=			${WRKDIST}/src

NO_REGRESS=		Yes

do-install:
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zsnes
	    cd ${WRKBUILD} && \
		${INSTALL_PROGRAM} zsnes ${PREFIX}/bin
	    cd ${WRKSRC} && \
		${INSTALL_MAN} linux/zsnes.1 ${PREFIX}/man/man1/zsnes.1
	    cd ${WRKDIST} && \
		${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/zsnes

.include <bsd.port.mk>
