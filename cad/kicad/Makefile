# $OpenBSD: Makefile,v 1.21 2014/07/13 13:03:20 armani Exp $

COMMENT-main=	schematic and PCB editing software
COMMENT-docs=	documentation for the kicad library of components

V=		2010-05-05
S=		BZR2356-stable
DISTNAME=	kicad-sources-${V}-${S}
PKGNAME=	kicad-${V:S/-//g}
PKGNAME-main=	kicad-${V:S/-//g}
PKGNAME-docs=	kicad-docs-${V:S/-//g}

REVISION-main=	3
REVISION-doc=	0

CATEGORIES=	cad

HOMEPAGE=	http://www.kicad-pcb.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://iut-tice.ujf-grenoble.fr/cao/sources/old_versions/
MASTER_SITES0=	http://distfiles.nl/

DOCDIST=	doc_components-${V}-${S}.tgz
DISTFILES=	${DISTNAME}.zip ${DOCDIST}:0
EXTRACT_ONLY=	${DISTNAME}.zip
DIST_SUBDIR=	kicad

MULTI_PACKAGES=	-main -docs

MODULES=	devel/cmake \
		devel/gettext

# kicad includes some boost headers, but somehow
# randomly fails if boost is present then junked
BUILD_DEPENDS =	devel/boost

RUN_DEPENDS-main=	cad/kicad-library \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

LIB_DEPENDS=	x11/wxWidgets

WANTLIB-main += ${WANTLIB} GL GLU c m pthread stdc++
WANTLIB-main += ICE SM X11 Xext wx_base wx_base_net wx_gtk2_adv wx_gtk2_aui
WANTLIB-main += wx_gtk2_core wx_gtk2_gl wx_gtk2_html z
WANTLIB-docs=
RUN_DEPENDS-docs=
LIB_DEPENDS-docs=
PKG_ARCH-docs=	*

WRKDIST=	${WRKDIR}/kicad-sources-${V}-${S:S/-stable//}

MAKE_FLAGS=	CC=${CXX} CXX=${CXX} LD=${CXX} \
		CXXFLAGS="${CXXFLAGS}" X11BASE=${X11BASE}

LANGS=		ca cs de es fi fr hu it ko nl pl pt ru sl sv zh_CN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/common/gestfich.cpp

post-build:
.for l in ${LANGS}
	cd ${WRKSRC}/internat/$l && rm -f *.mo && \
		msgfmt -o kicad.mo kicad.po
.endfor

post-install:
.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$l/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/internat/$l/kicad.mo \
		${PREFIX}/share/locale/$l/LC_MESSAGES
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kicad/library
	cd ${PREFIX}/share/doc/kicad/library && \
		tar -xzf ${FULLDISTDIR}/${DOCDIST}
	cd ${PREFIX}/share/doc/kicad/library/doc && \
		mv analog_mux\&switches analog_mux_and_switches
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/kicad \
		${PREFIX}/share/doc/kicad

.include <bsd.port.mk>
