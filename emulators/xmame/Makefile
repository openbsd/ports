# $OpenBSD: Makefile,v 1.14 2005/10/02 20:36:49 aanriot Exp $

COMMENT=	"emulates arcade machines and old home computers"
COMMENT-mame=	"emulates a massive variety of arcade machines"
COMMENT-mess=	"emulates game consoles and old home computers"

VERSION=	0.100
DISTNAME=	xmame-${VERSION}

CATEGORIES=	emulators games
MASTER_SITES=   ${HOMEPAGE}/download/ \
                ftp://ftp.kaupp.cx/pub/xmame/
MASTER_SITES0=	http://www.mameworld.net/highscore/
MASTER_SITES1=	http://www.arcade-history.com/download/
MASTER_SITES2=	http://cheat.retrogames.com/ \
		${MASTER_SITE_BACKUP}

HOMEPAGE=	http://x.mame.net

MAINTAINER=	Claudio Castiglia <ccastig@mail.ru>

HISCORE_FILE=	uhsdat${VERSION:S/.//}.zip
HISTORY_FILE=	history1_02.zip
CHEAT_FILE=	cheat.zip
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${HISCORE_FILE}:0 \
		${HISTORY_FILE}:1 ${CHEAT_FILE}:2

# Need to know endianness
ONLY_FOR_ARCHS=	amd64 alpha hppa i386 m68k powerpc sparc

# xmame license, see
# http://x.mame.net/license.html
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	"Yes"
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	"Yes"
WANTLIB=		X11 Xext Xv Xxf86dga Xxf86vm c m usbhid z

EXTRACT_SUFX=	.tar.bz2

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes

MULTI_PACKAGES=	-mame -mess

PKGNAME=	xmame+xmess-${VERSION}
PKGNAME-mame=	xmame-${VERSION}
PKGNAME-mess=	xmess-${VERSION}

FLAVORS=	x11 sdl
FLAVORS+=	esd

#XXX arts coredumps, net broken
#FLAVORS+=	arts net

FLAVOR?=	x11 

.if ${FLAVOR:L:Msdl} && ${FLAVOR:L:Mx11}
ERRORS+=	"Fatal: Please select only one video flavor."
DISPLAY_METHOD=
.endif

.if ${FLAVOR:L:Msdl}
DISPLAY_METHOD= SDL
LIB_DEPENDS+=	SDL.:sdl-*-!no_x11:devel/sdl
.else
DISPLAY_METHOD=	x11
LIB_DEPENDS+=	jpeg.::graphics/jpeg
MAKE_FLAGS+=	X11_OPENGL=1
.endif

# XXX coredump
#.if ${FLAVOR:L:Marts}
#LIB_DEPENDS+=	artsc::x11/kde/arts3
#MAKE_FLAGS+=	SOUND_ARTS_SMOTEK=1 SOUND_ARTS_TEIRA=1
#.endif

# XXX broken
#.if ${FLAVOR:L:Mnet}
#MAKE_FLAGS+=	XMAME_NET=1
#.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd::audio/esound
MAKE_FLAGS+=	SOUND_ESOUND=1
.endif

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	nasm::devel/nasm
MAKE_FLAGS+=	MY_CPU=i386 \
		X86_ASM_68000=1 \
		EFFECT_MMX_ASM=1
. if ${DISPLAY_METHOD} == "x11"
MAKE_FLAGS+=	X11_DGA=1 
. endif
.elif ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k" || \
      ${MACHINE_ARCH} == "amd64"
MAKE_FLAGS+=	MY_CPU=${MACHINE_ARCH}
.elif ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "powerpc" || \
      ${MACHINE_ARCH} == "sparc"
MAKE_FLAGS+=	MY_CPU=risc
.endif

LIB_DEPENDS+=	expat::textproc/expat

MAKE_ENV=	PREFIX="${PREFIX}"
MAKE_FILE=	Makefile.OpenBSD
FAKE_FLAGS=	${MAKE_FLAGS}
MAKE_FLAGS+=	ARCH=openbsd \
		CC="${CC}" CFLAGS="${CFLAGS} -DRTLD_GLOBAL=0" \
		DISPLAY_METHOD="${DISPLAY_METHOD}" \
		INCLUDES="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lexpat -lz" GLLIBS="" \
		INSTALL_PROGRAM_DIR="${INSTALL_PROGRAM_DIR}" \
		INSTALL_MAN_DIR="${INSTALL_MAN_DIR}" \
		INSTALL_DATA_DIR="${INSTALL_DATA_DIR}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_PROGRAM_SUID="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		SYSCONFDIR="${SYSCONFDIR}" \
		JOY_USB=1

NO_REGRESS=	Yes

MAME_EXTBIN=	romcmp xml2info
MESS_EXTBIN=	chdman dat2html imgtool 

DOCS=		changes.opengl changes.unix dga2.txt liesmich.unix \
		multiplayer-readme.txt xmame-doc-2.html xmame-doc-3.html \
		xmame-doc-4.html xmame-doc-5.html xmame-doc-6.html \
		xmame-doc-7.html xmame-doc.html xmame-doc.lyx \
		xmame-doc.man.skel xmame-doc.txt xmame-gdoc-1.html \
		xmame-gdoc-2.html xmame-gdoc-3.html xmame-gdoc-4.html \
		xmame-gdoc-5.html xmame-gdoc-6.html xmame-gdoc-7.html \
		xmame-gdoc-8.html xmame-gdoc.html xmame.css xmamerc.dist \
		xmessrc.dist

MESS_DOCS=	imgtool.txt messnew.txt style.css wintoc.xml faq.htm \
		credits.htm messroms.txt images/logo.gif windows/update.htm \
		windows/osmenu.htm windows/install.htm windows/compile.htm \
		windows/guiuse.htm windows/main.htm windows/choice.htm \
		windows/config.htm windows/win32cmd.htm windows/guiconf.htm \
		windows/control.htm windows/images/iniicon.gif \
		windows/images/tree.gif windows/images/wzip.gif \
		windows/images/propsnd.gif windows/images/propd3d.gif \
		windows/images/command.gif windows/images/newmenu.gif \
		windows/images/keybcnt.gif windows/images/propmsc.gif \
		windows/images/startup.gif windows/images/propadv.gif \
		windows/images/gui.gif windows/images/frog.gif \
		windows/images/oldmenu.gif windows/images/propcnt.gif \
		windows/images/prop.gif windows/images/props.gif \
		windows/mgebios.htm windows/instbios.htm windows/runsw.htm \
		windows/suppsys.htm

post-extract:
	${UNZIP} -u ${FULLDISTDIR}/${HISCORE_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${HISTORY_FILE} -d ${WRKDIR}
	${UNZIP} -u ${FULLDISTDIR}/${CHEAT_FILE} -d ${WRKDIR}

post-patch:
	@cp ${FILESDIR}/${MAKE_FILE} ${WRKSRC}

post-install:
	mv ${PREFIX}/bin/xmame.${DISPLAY_METHOD} ${PREFIX}/bin/xmame
	mv ${PREFIX}/bin/xmess.${DISPLAY_METHOD} ${PREFIX}/bin/xmess
.for i in ${MAME_EXTBIN} ${MESS_EXTBIN}
	${INSTALL_PROGRAM} ${WRKSRC}/${i} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/img
	${INSTALL_DATA} ${WRKSRC}/doc/img/xmame.jpg \
		${PREFIX}/share/doc/xmame/img
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmame
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${PREFIX}/share/doc/xmame
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/mame
	${INSTALL_DATA} ${WRKSRC}/doc/mame/* ${PREFIX}/share/doc/xmame/mame
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/mess/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmame/mess/windows/images
.for i in ${MESS_DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/mess/${i} \
		${PREFIX}/share/doc/xmame/mess/${i}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmame/ctrlr
	${INSTALL_DATA} ${FILESDIR}/xmame-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmame/xmamerc
	${INSTALL_DATA} ${WRKSRC}/ctrlr/* ${PREFIX}/share/xmame/ctrlr
	${INSTALL_DATA} ${WRKDIR}/*.{dat,txt} ${PREFIX}/share/xmame
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmess/hash
	${INSTALL_DATA} ${WRKSRC}/hash/* ${PREFIX}/share/xmess/hash
	${INSTALL_DATA} ${FILESDIR}/xmess-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmess/xmessrc
	${INSTALL_DATA} ${WRKSRC}/doc/mess/sysinfo.dat ${PREFIX}/share/xmess

.include <bsd.port.mk>
