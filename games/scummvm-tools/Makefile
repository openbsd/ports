# $OpenBSD: Makefile,v 1.7 2005/06/24 15:25:37 jolan Exp $
# XXX hardcoded endian list

COMMENT=	"collection of various tools for scummvm"
DISTNAME=	scummvm-tools-0.7.0
PKGNAME=	${DISTNAME}p0
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
		${WRKBUILD}/compress_san \
		${WRKBUILD}/convbdf \
		${WRKBUILD}/dekyra \
		${WRKBUILD}/descumm \
		${WRKBUILD}/desword2 \
		${WRKBUILD}/extract \
		${WRKBUILD}/queenrebuild \
		${WRKBUILD}/rescumm \
		${WRKBUILD}/saga2mp3 \
		${WRKBUILD}/simon{1decr,2mp3} \
		${WRKBUILD}/sword{1mp3,2mp3} \
		${PREFIX}/bin

.include <bsd.port.mk>
