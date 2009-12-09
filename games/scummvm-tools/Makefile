# $OpenBSD: Makefile,v 1.15 2009/12/09 21:55:01 jsg Exp $
# XXX hardcoded endian list

COMMENT=	collection of various tools for scummvm
DISTNAME=	scummvm-tools-1.0.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ogg stdc++ z

NO_REGRESS=	Yes
USE_GMAKE=	Yes

.if (!${MACHINE_ARCH} == "alpha" && !${MACHINE_ARCH} == "amd64" && \
	!${MACHINE_ARCH} == "arm" && !${MACHINE_ARCH} == "i386" && \
	!${MACHINE_ARCH} == "vax")

CFLAGS+=	-DSCUMM_BIG_ENDIAN
CXXFLAGS+=	-DSCUMM_BIG_ENDIAN
.endif

LIB_DEPENDS=	FLAC::audio/flac \
		png::graphics/png \
		vorbis,vorbisenc::audio/libvorbis

RUN_DEPENDS=	::audio/lame \
		::audio/vorbis-tools

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm-tools	
	${INSTALL_PROGRAM} \
		${WRKBUILD}/compress_{agos,gob,kyra,queen,saga} \
		${WRKBUILD}/compress_{scumm_bun,scumm_san,scumm_sou} \
		${WRKBUILD}/compress_{sword1,sword2,tinsel,touche,tucker} \
		${WRKBUILD}/de{cine,kyra,scumm,sword2,gob} \
		${WRKBUILD}/encode_dxa \
		${WRKBUILD}/extract_{agos,cine,cruise_pc,kyra,loom_tg16} \
		${WRKBUILD}/extract_{mm_apple,mm_c64,mm_nes,parallaction} \
		${WRKBUILD}/extract_{scumm_mac,t7g_mac,zak_c64,gob_stk} \
		${PREFIX}/bin

.include <bsd.port.mk>
