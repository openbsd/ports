# $OpenBSD: Makefile,v 1.16 2006/11/13 16:31:08 steven Exp $

# sync with mplayer archs due to dependency
ONLY_FOR_ARCHS=i386 macppc

DISTNAME=mplayer-fontmaker-0.90
CATEGORIES=x11
COMMENT='subtitle fonts generator for mplayer'

MODULES=	converters/libiconv
BUILD_DEPENDS=	::x11/mplayer:configure
DISTFILES=
NO_CHECKSUM=	Yes

post-extract:
	ln -sf ${WRKDIR}/x11/mplayer/MPlayer-* ${WRKDIST}

WRKSRC=	${WRKDIST}/TOOLS/subfont-c
ALL_TARGET=subfont
MAKE_FLAGS=OPTFLAGS='-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include' \
    LDLIBS='-lm -L/usr/X11R6/lib -lfreetype -L/usr/local/lib -liconv'

USE_GMAKE=Yes
USE_X11=Yes

OSDDIR=${PREFIX}/libdata/mplayer-osd

post-build:
	sed -e 's,^PREFIX=.*,PREFIX=${PREFIX},' \
	    ${FILESDIR}/mksubfont >${WRKBUILD}/mksubfont

NO_REGRESS=Yes

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
WANTLIB=		c freetype m 

.include <bsd.port.mk>
