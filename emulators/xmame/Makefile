# $OpenBSD: Makefile,v 1.3 2001/09/30 17:21:52 naddy Exp $

COMMENT=	"emulates arcade machines and old home computers"
COMMENT-mame=	"emulates a massive variety of arcade machines"
COMMENT-mess=	"emulates game consoles and old home computers"

VERSION=	0.37b13.2
DISTNAME=	xmame-${VERSION}

NEED_VERSION=	1.427
CATEGORIES=	emulators games
MASTER_SITES=	${HOMEPAGE}/download/ \
		ftp://ftp.kaupp.cx/pub/xmame/
MASTER_SITES0=	http://www.mame.net/zips/
MASTER_SITES1=	http://www.sys2064.com/files/mame/
MASTER_SITES2=	http://cheat.retrogames.com/

HOMEPAGE=	http://x.mame.net

MAINTAINER=	Claudio Castiglia <ccastig@softhome.net>

HISCORE_FILE=	hsdat7.zip
HISTORY_FILE=	history.zip
CHEAT_FILE=	cheat37b2.zip
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${HISCORE_FILE}:0 ${HISTORY_FILE}:1 \
		${CHEAT_FILE}:2

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

FLAVORS=	x11 gl sdl
FLAVOR?=	x11

.if   ${FLAVOR} == "sdl"
DISPLAY_METHOD= SDL
LIB_DEPENDS+=	SDL.:sdl-*-!no_x11:devel/sdl
.elif ${FLAVOR} == "gl"
DISPLAY_METHOD=	xgl
LIB_DEPENDS+=	jpeg.::graphics/jpeg
.elif ${FLAVOR} == "x11"
DISPLAY_METHOD=	x11
.else
.  for i in ${FLAVOR:L}
.    if ${FLAVORS:L:M${i}}
EXFL+=		${i}
EXFI?=		${i}
.    endif
.  endfor
.  if ${EXFL} != ${EXFI}
ERRORS+=	"Fatal: Mutually exclusive flavors: ${EXFL}."
.  endif
DISPLAY_METHOD=
.endif

MAKE_ENV=	PREFIX="${PREFIX}"
MAKE_FILE=	Makefile.OpenBSD
FAKE_FLAGS=	${MAKE_FLAGS}
MAKE_FLAGS=	ARCH=openbsd \
		DISPLAY_METHOD="${DISPLAY_METHOD}" \
		INCLUDES="-I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib" \
		X11INC="-I${X11BASE}/include" X11LIB="-L${X11BASE}/lib" \
		GLLIBS="-pthread" CFLAGS="-DRTLD_GLOBAL=0" \
		INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
		INSTALL_MAN_DIR="${INSTALL_MAN_DIR}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_PROGRAM_SUID="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		SYSCONFDIR="${SYSCONFDIR}" \
		JOY_USB=1

.if   ${MACHINE_ARCH} == "i386"
MAKE_FLAGS+=	MY_CPU=i386
.  if   ${DISPLAY_METHOD} == "x11"
MAKE_FLAGS+=	X11_DGA=1
.  elif ${DISPLAY_METHOD} != "SDL"
MAKE_FLAGS+=	JOY_I386=1
.  endif
.elif ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k"
MAKE_FLAGS+=	MY_CPU=${MACHINE_ARCH}
.elif ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "powerpc" || \
      ${MACHINE_ARCH} == "sparc"
MAKE_FLAGS+=	MY_CPU=risc
.endif

post-patch:
	@cp ${FILESDIR}/${MAKE_FILE} ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/sysinfo
	@cd ${WRKSRC}/doc && find . -type f \
		-exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/xmame/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmame
	${INSTALL_DATA} ${FILESDIR}/xmame-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmame/xmamerc
	${UNZIP} -u ${FULLDISTDIR}/${HISCORE_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${HISTORY_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${CHEAT_FILE} -d ${WRKDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmame
	${INSTALL_DATA} ${WRKDIR}/*dat ${PREFIX}/share/xmame
	${INSTALL_DATA} ${WRKDIR}/*txt ${PREFIX}/share/doc/xmame
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmess
	${INSTALL_DATA} ${FILESDIR}/xmess-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmess/xmessrc

.include <bsd.port.mk>
