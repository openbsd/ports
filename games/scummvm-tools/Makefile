# $OpenBSD: Makefile,v 1.6 2005/01/06 00:19:24 jsg Exp $

COMMENT=	"collection of various tools for scummvm"
VERSION=	0.7.0
DISTNAME=	scummvm-tools-${VERSION}
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
     !${MACHINE_ARCH} == "i386" && !${MACHINE_ARCH} == "vax")

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
