# $OpenBSD: Makefile,v 1.20 2014/11/04 22:01:53 abieber Exp $

COMMENT=	interactive electronics designing software

V=		0.9.0
DISTNAME=	fritzing-$Vb.source
PKGNAME=	fritzing-$V
CATEGORIES=	cad

HOMEPAGE=	http://fritzing.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# Code: GPLv3+
# Rest: CreativeCommons:BY-SA
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}download/$Vb/source-tarball/
EXTRACT_SUFX=	.tar_1.bz2

EXTRACT_CASES=	*.tar_1.bz2) tar -jxf ${FULLDISTDIR}/$$archive ;;

WANTLIB += QtGui QtNetwork QtSql QtSvg QtXml c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES=        x11/qt4
NO_TEST=	Yes

BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/phoenix.pro ${WRKSRC}/src/fapplication.cpp

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
