# $OpenBSD: Makefile,v 1.1.1.1 2004/02/01 06:18:24 jolan Exp $

COMMENT=	"collection of various tools for scummvm"
DISTNAME=	scummvm-tools-0.5.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

.if (!${MACHINE_ARCH} == "alpha" && !${MACHINE_ARCH} == "i386" && \
     !${MACHINE_ARCH} == "vax")
CFLAGS+=	-DSCUMM_BIG_ENDIAN
CXXFLAGS+=	-DSCUMM_BIG_ENDIAN
.endif

RUN_DEPENDS=	::audio/lame \
		::audio/vorbis-tools

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm-tools	
	${INSTALL_PROGRAM} ${WRKBUILD}/descumm{,6} ${WRKBUILD}/extract \
		${WRKBUILD}/rescumm ${WRKBUILD}/simon{1decr,2mp3} \
		${PREFIX}/bin

.include <bsd.port.mk>
