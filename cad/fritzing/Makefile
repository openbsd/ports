# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:44 sthen Exp $

COMMENT=	interactive electronics designing software

V=		0.9.2
REVISION=	4

GH_ACCOUNT=	fritzing
GH_PROJECT=	fritzing-app
GH_TAGNAME=	${V}b

DISTNAME=	fritzing-$Vb
CATEGORIES=	cad

DISTFILES=	${DISTNAME}.tar.gz \
		fritzing-parts-${GH_TAGNAME}${EXTRACT_SUFX}:0

HOMEPAGE=	http://fritzing.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

MASTER_SITES0= https://github.com/fritzing/fritzing-parts/archive/${GH_TAGNAME}/

# Code: GPLv3+
# Rest: CreativeCommons:BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB += ICE QtGui QtNetwork QtSql QtSvg QtXml SM X11 Xext Xi
WANTLIB += Xinerama Xrender c fontconfig freetype m pthread ${COMPILER_LIBCXX}
WANTLIB += z lib/qt4/QtSerialPort

COMPILER =		base-clang ports-gcc base-gcc

MODULES=        devel/qmake x11/qt4
NO_TEST=	Yes

LIB_DEPENDS=	comms/qtserialport
BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	devel/desktop-file-utils

# avoid picking up /src/serialport/qt4support/serialport.prf
MODQMAKE_ARGS+=	QTSERIALPORT_PROJECT_ROOT=${WRKDIR}

post-extract:
	mv ${WRKDIR}/fritzing-parts-${GH_TAGNAME}/* ${WRKSRC}/parts

pre-configure:
	${SUBST_CMD} ${WRKSRC}/phoenix.pro ${WRKSRC}/src/fapplication.cpp

# -DLINUX_32 gets added to CFLAGS, though it's only used to figure out
# if there is a newer version of the 32-bit Linux binary on the upstream
# webpage. So it's safe to set it on all arches (for now).

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/fritzing.sh ${PREFIX}/bin/fritzing
	${INSTALL_PROGRAM} ${WRKBUILD}/Fritzing ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/fritzing/
	cd ${WRKSRC}; tar cf - bins help parts pdb resources sketches tools translations | \
		tar xf - -C ${PREFIX}/share/fritzing/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/fritzing.desktop \
		${PREFIX}/share/applications/fritzing.desktop

.include <bsd.port.mk>
