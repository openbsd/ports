# $OpenBSD: Makefile,v 1.1.1.1 2001/04/04 14:31:54 naddy Exp $

COMMENT=	emulates arcade machines and old home computers
COMMENT-mame=	emulates a massive variety of arcade machines
COMMENT-mess=	emulates game consoles and old home computers

VERSION=	0.37b11.2
DISTNAME=	xmame-${VERSION}
NEED_VERSION=	1.377
CATEGORIES=	emulators games
MASTER_SITES=	${HOMEPAGE}/download/ \
		ftp://ftp.kaupp.cx/pub/xmame/

HOMEPAGE=	http://x.mame.net

MAINTAINER=	Claudio Castiglia <ccastig@softhome.net>

# Need to know endianness
ONLY_FOR_ARCHS=	alpha hppa i386 m68k powerpc sparc

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
USE_X11=	Yes

MULTI_PACKAGES=	-mame -mess

PKGNAME=	xmame+xmess-${VERSION}
PKGNAME-mame=	xmame-${VERSION}
PKGNAME-mess=	xmess-${VERSION}

FLAVORS=	gl
FLAVOR?=

.if ${FLAVOR:L:Mgl}
LIB_DEPENDS+=	GLU.3::graphics/Mesa
DISPLAY_METHOD=	xgl
.else
DISPLAY_METHOD=	x11
.endif

MAKE_ENV=	PREFIX="${PREFIX}"
MAKE_FILE=	Makefile.OpenBSD
FAKE_FLAGS=	${MAKE_FLAGS}
MAKE_FLAGS=	ARCH=openbsd \
		DISPLAY_METHOD="${DISPLAY_METHOD}" \
		INCLUDES="-I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib" \
		X11INC="-I${X11BASE}/include" X11LIB="-L${X11BASE}/lib" \
		INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
		INSTALL_MAN_DIR="${INSTALL_MAN_DIR}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_PROGRAM_SUID="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_DATA="${INSTALL_DATA}"

.if   ${MACHINE_ARCH} == "i386"
MAKE_FLAGS+=	MY_CPU=i386 JOY_I386=1 X11_DGA=1
.elif ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k"
MAKE_FLAGS+=	MY_CPU=${MACHINE_ARCH}
.elif ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "powerpc" || \
      ${MACHINE_ARCH} == "sparc"
MAKE_FLAGS+=	MY_CPU=risc
.endif

post-patch:
	@cp ${FILESDIR}/${MAKE_FILE} ${WRKSRC}

post-install:
	@echo "\nInstalling extra documentation..."
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xmame

.include <bsd.port.mk>
