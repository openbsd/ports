# $OpenBSD: Makefile,v 1.6 2002/03/22 06:38:35 fgsch Exp $

COMMENT=	"emulates arcade machines and old home computers"
COMMENT-mame=	"emulates a massive variety of arcade machines"
COMMENT-mess=	"emulates game consoles and old home computers"

VERSION=	0.56.2
DISTNAME=	xmame-${VERSION}

NEED_VERSION=	1.500
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
CHEAT_FILE=	cheat.zip
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${HISCORE_FILE}:0 ${HISTORY_FILE}:1 \
		${CHEAT_FILE}:2

# Need to know endianness
ONLY_FOR_ARCHS=	alpha hppa i386 m68k powerpc sparc

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tar.bz2

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes

MULTI_PACKAGES=	-mame -mess

PKGNAME=	xmame+xmess-${VERSION}
PKGNAME-mame=	xmame-${VERSION}
PKGNAME-mess=	xmess-${VERSION}

VIDEOF=		x11 gl sdl

FLAVORS=	${VIDEOF}
# FLAVORS+=	arts esd

FLAVOR?=	x11 

EXFL?=
EXFI?=

# Video flavors are mutually exclusive
.for i in ${FLAVOR:L}
.  if ${VIDEOF:L:M${i}}
EXFL+=		${i}
.    if empty (EXFI)
EXFI+=		${i}
.    endif
.  endif
.endfor
.if   ${EXFL} != ${EXFI}
ERRORS+=	"Fatal: Mutually exclusive flavors: ${EXFL}."
DISPLAY_METHOD=
.endif

# Default video flavor is X11
.if empty (EXFI)
FLAVOR+=	x11
.endif

.if   ${FLAVOR:L:Msdl}
DISPLAY_METHOD= SDL
LIB_DEPENDS+=	SDL.:sdl-*-!no_x11:devel/sdl
.elif ${FLAVOR:L:Mgl}
DISPLAY_METHOD=	xgl
LIB_DEPENDS+=	jpeg.::graphics/jpeg
.else
DISPLAY_METHOD=	x11
.endif

# XXX coredump
#.if  ${FLAVOR:L:Marts}
#MAKE_FLAGS+=	SOUND_ARTS_SMOTEK=1
#LIB_DEPENDS+=	artsc::x11/kde/libs2
#.endif
#
#.if  ${FLAVOR:L:Mesd}
#MAKE_FLAGS+=	SOUND_ESOUND=1
#LIB_DEPENDS+=	esd::audio/esound
#.endif

MAKE_ENV=	PREFIX="${PREFIX}"
MAKE_FILE=	Makefile.OpenBSD
FAKE_FLAGS=	${MAKE_FLAGS}
MAKE_FLAGS+=	ARCH=openbsd \
		CC="${CC}" CFLAGS="${CFLAGS} -DRTLD_GLOBAL=0" \
		DISPLAY_METHOD="${DISPLAY_METHOD}" \
		INCLUDES="-I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib" \
		X11INC="-I${X11BASE}/include" X11LIB="-L${X11BASE}/lib" \
		GLLIBS="-pthread" \
		INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
		INSTALL_MAN_DIR="${INSTALL_MAN_DIR}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_PROGRAM_SUID="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		SYSCONFDIR="${SYSCONFDIR}" \
		JOY_USB=1

DOCS=	changes.mame changes.mess changes.opengl changes.unix credits.mess \
	dga2.txt gamelist.mame gamelist.mess imgtool.txt liesmich.unix \
	messroms.txt multiplayer-readme.txt old-changes.mess readme.mame \
	readme.mess xmame-doc-1.html xmame-doc-2.html xmame-doc-3.html \
	xmame-doc-4.html xmame-doc-5.html xmame-doc-6.html xmame-doc-7.html \
	xmame-doc-8.html xmame-doc.html xmame-doc.lyx xmame-doc.man.skel \
	xmame-doc.txt xmame-gdoc-1.html xmame-gdoc-2.html xmame-gdoc-3.html \
	xmame-gdoc-4.html xmame-gdoc-5.html xmame-gdoc-6.html \
	xmame-gdoc-7.html xmame-gdoc-8.html xmame-gdoc.html xmame.css

.if   ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	nasm::devel/nasm
MAKE_FLAGS+=	MY_CPU=i386 \
		X86_ASM_68000=1 \
		NASM_FMT="-f aoutb" \
		ASM_STRIP="true"
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

post-extract:
	${UNZIP} -u ${FULLDISTDIR}/${HISCORE_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${HISTORY_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${CHEAT_FILE} -d ${WRKDIR}
	cp ${WRKSRC}/doc/xmame.6 ${WRKSRC}/doc/xmess.6

post-patch:
	@cp ${FILESDIR}/${MAKE_FILE} ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/img
	${INSTALL_DATA} ${WRKSRC}/doc/img/xmame.jpg \
		${PREFIX}/share/doc/xmame/img
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmame
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${PREFIX}/share/doc/xmame
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmame
	${INSTALL_DATA} ${FILESDIR}/xmame-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmame/xmamerc
	perl -i -pe 's:%%PREFIX%%:${TRUEPREFIX}:' ${PREFIX}/share/xmame/xmamerc
	${INSTALL_DATA} ${WRKDIR}/*.dat ${PREFIX}/share/xmame
	${INSTALL_DATA} ${WRKDIR}/*.txt ${PREFIX}/share/doc/xmame
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmess
	${INSTALL_DATA} ${FILESDIR}/xmess-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmess/xmessrc
	perl -i -pe 's:%%PREFIX%%:${TRUEPREFIX}:' ${PREFIX}/share/xmess/xmessrc
	${INSTALL_DATA} ${WRKSRC}/doc/sysinfo.dat ${PREFIX}/share/xmess

.include <bsd.port.mk>
