# $OpenBSD: Makefile,v 1.33 2009/08/10 06:31:09 kili Exp $

COMMENT-main=	emulates arcade machines and old home computers
COMMENT-mame=	emulates a massive variety of arcade machines
COMMENT-mess=	emulates game consoles and old home computers

VERSION=	0.104
DISTNAME=	xmame-${VERSION}

PKGNAME-main=	xmame+xmess-${VERSION}p4
PKGNAME-mame=	xmame-${VERSION}p3
PKGNAME-mess=	xmess-${VERSION}p3

CATEGORIES=	emulators games
MASTER_SITES=	ftp://xmame.kaupp.us/pub/xmame/ \
		http://www.energyhq.be/files/ \
		http://www.pkix.net/mirror/x.mame.net/

HOMEPAGE=	http://x.mame.net

# Need to know endianness
ONLY_FOR_ARCHS=	amd64 alpha hppa i386 m68k sparc

# xmame license, see http://x.mame.net/license.html
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xv Xxf86dga Xxf86vm expat c m pthread-stubs \
			usbhid xcb z

EXTRACT_SUFX=	.tar.bz2

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes

MULTI_PACKAGES=	-main -mame -mess

FLAVORS=	esd sdl x11
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

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd::audio/esound
MAKE_FLAGS+=	SOUND_ESOUND=1
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
. if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
MAKE_FLAGS+=	X86_ASM_68000=1 \
		EFFECT_MMX_ASM=1
. endif
MAKE_FLAGS+=	MY_CPU=${MACHINE_ARCH}
. if ${DISPLAY_METHOD} == "x11"
MAKE_FLAGS+=	X11_DGA=1 
. endif
.elif ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "m68k"
MAKE_FLAGS+=	MY_CPU=${MACHINE_ARCH}
.elif ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "sparc"
MAKE_FLAGS+=	MY_CPU=risc
.endif

MAKE_ENV=	PREFIX="${PREFIX}"
MAKE_FILE=	Makefile.OpenBSD
MAKE_FLAGS+=	ARCH=openbsd \
		CC="${CC}" CFLAGS="${CFLAGS}" \
		DISPLAY_METHOD="${DISPLAY_METHOD}" \
		INCLUDES="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lexpat -lz" GLLIBS="" \
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/xmess/hash
	${INSTALL_DATA} ${WRKSRC}/hash/* ${PREFIX}/share/xmess/hash
	${INSTALL_DATA} ${FILESDIR}/xmess-${DISPLAY_METHOD}rc \
		${PREFIX}/share/xmess/xmessrc
	${INSTALL_DATA} ${WRKSRC}/doc/mess/sysinfo.dat ${PREFIX}/share/xmess

.include <bsd.port.mk>
