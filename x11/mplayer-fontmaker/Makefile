# $OpenBSD: Makefile,v 1.3 2002/08/18 11:30:35 espie Exp $

DISTNAME=mplayer-fontmaker-0.90pre6
CATEGORIES=x11
COMMENT='subtitle fonts generator for mplayer'

BUILD_DEPENDS=::x11/mplayer,iconv:configure
DISTFILES=
NO_CHECKSUM=	Yes

post-extract:
	ln -sf ${WRKDIR}/x11/mplayer/MPlayer-* ${WRKDIST}

WRKSRC=	${WRKDIST}/TOOLS/subfont-c
ALL_TARGET=subfont
MAKE_FLAGS=OPTFLAGS='-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include' \
    LDLIBS='-lm -L/usr/X11R6/lib -lfreetype -L/usr/local/lib -liconv'

USE_GMAKE=Yes

OSDDIR=${PREFIX}/libdata/mplayer-osd

post-build:
	sed -e 's,^PREFIX=.*,PREFIX=${PREFIX},' \
	    ${FILESDIR}/mksubfont >${WRKBUILD}/mksubfont

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/subfont ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${OSDDIR}
	${INSTALL_DATA} ${WRKBUILD}/osd/osd.pfb  ${OSDDIR}
	${INSTALL_DATA} ${WRKBUILD}/encodings/osd-mplayer ${OSDDIR}/osd-encoding
	${INSTALL_PROGRAM} ${WRKBUILD}/mksubfont ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/mplayer-fontmaker

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Patented stuff"

.include <bsd.port.mk>
