# $OpenBSD: Makefile,v 1.9 2006/07/08 04:16:18 jsg Exp $
# XXX hardcoded endian list

COMMENT=	"collection of various tools for scummvm"
DISTNAME=	scummvm-tools-0.9.0
PKGNAME=	${DISTNAME}
WRKDIST=	${WRKDIR}/${DISTNAME:S/scummvm-//}
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ z

NO_REGRESS=	Yes
USE_GMAKE=	Yes

.if (!${MACHINE_ARCH} == "alpha" && !${MACHINE_ARCH} == "amd64" && \
	!${MACHINE_ARCH} == "arm" && !${MACHINE_ARCH} == "i386" && \
	!${MACHINE_ARCH} == "vax")

CFLAGS+=	-DSCUMM_BIG_ENDIAN
CXXFLAGS+=	-DSCUMM_BIG_ENDIAN
.endif

RUN_DEPENDS=	::audio/lame \
		::audio/vorbis-tools \
		::audio/flac

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm-tools	
	${INSTALL_PROGRAM} \
		${WRKBUILD}/compress_{kyra,queen,saga,scumm_san,scumm_bun} \
		${WRKBUILD}/compress_{scumm_sou,simon,sword1,sword2} \
		${WRKBUILD}/de{kyra,scumm,sword2} \
		${WRKBUILD/extract_{kyra,mm_nes,scumm_mac,zak_c64} \
		${PREFIX}/bin

.include <bsd.port.mk>
