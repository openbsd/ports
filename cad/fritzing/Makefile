# $OpenBSD: Makefile,v 1.21 2015/11/24 15:02:23 abieber Exp $

COMMENT=	interactive electronics designing software

V=		0.9.2

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
PERMIT_PACKAGE_CDROM =	Yes

MODULES=        x11/qt4
NO_TEST=	Yes

BUILD_DEPENDS=	comms/qtserialport \
		devel/boost

RUN_DEPENDS=	devel/desktop-file-utils

pre-configure:
	cp -rp ${WRKDIR}/fritzing-parts-${GH_TAGNAME}/* ${WRKSRC}/parts
	${SUBST_CMD} ${WRKSRC}/phoenix.pro ${WRKSRC}/src/fapplication.cpp

WANTLIB += ICE QtGui QtNetwork QtSql QtSvg QtXml SM X11 Xext Xi
WANTLIB += Xinerama Xrender c fontconfig freetype m pthread stdc++
WANTLIB += z

# -DLINUX_32 gets added to CFLAGS, though it's only used to figure out
# if there is a newer version of the 32-bit Linux binary on the upstream
# webpage. So it's safe to set it on all arches (for now).
do-configure:
	cd ${WRKSRC} && \
		${LOCALBASE}/bin/qmake4 -o Makefile phoenix.pro

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/fritzing.sh ${PREFIX}/bin/fritzing
	${INSTALL_PROGRAM} ${WRKSRC}/Fritzing ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/fritzing/
	cd ${WRKSRC}; tar cf - bins help parts pdb resources sketches tools translations | \
		tar xf - -C ${PREFIX}/share/fritzing/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/fritzing.desktop \
		${PREFIX}/share/applications/fritzing.desktop

.include <bsd.port.mk>
