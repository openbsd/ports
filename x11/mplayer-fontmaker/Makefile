# $OpenBSD: Makefile,v 1.17 2007/04/01 17:16:36 naddy Exp $

# sync with mplayer archs due to dependency
ONLY_FOR_ARCHS=	amd64 i386 powerpc sparc64 arm

DISTNAME=mplayer-fontmaker-0.90
PKGNAME=${DISTNAME}p0
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
    LDLIBS='-lm -L/usr/X11R6/lib -lfreetype -lz -L/usr/local/lib -liconv'

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
WANTLIB=		c freetype m z

.include <bsd.port.mk>
