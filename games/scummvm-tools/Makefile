# $OpenBSD: Makefile,v 1.5 2004/11/28 22:41:21 espie Exp $

COMMENT=	"collection of various tools for scummvm"
# this tarball is horribly packaged
VERSION=	0.6.1
DISTNAME=	scummvm-tools-${VERSION}-src
PKGNAME=	${DISTNAME:S/-src//}
WRKDIST=	${WRKDIR}/scummvm-${VERSION}-tools
EXTRACT_SUFX=   .tar.bz2
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
		${WRKBUILD}/descumm \
		${WRKBUILD}/extract \
		${WRKBUILD}/simon{1decr,2mp3} \
		${WRKBUILD}/desword2 \
		${WRKBUILD}/rescumm \
		${WRKBUILD}/compress_san \
		${WRKBUILD}/convbdf \
		${PREFIX}/bin

.include <bsd.port.mk>
