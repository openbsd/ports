# $OpenBSD: Makefile,v 1.4 2007/04/16 14:13:14 steven Exp $

COMMENT-main=	"circuit drawing and schematic capture"
COMMENT-docs=	"documentation for the kicad library of components"

V=		2007-01-15
DISTNAME=	kicad-sources-${V}
PKGNAME=	kicad-20070115
PKGNAME-main=	kicad-20070115
PKGNAME-docs=	kicad-docs-20070115

CATEGORIES=	cad

HOMEPAGE=	http://www.lis.inpg.fr/realise_au_lis/kicad/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://iut-tice.ujf-grenoble.fr/cao/sources/
MASTER_SITES0=	ftp://iut-tice.ujf-grenoble.fr/cao/

MODULES=	devel/gettext

MULTI_PACKAGES=	-main -docs

WANTLIB-main=	GL GLU c m pthread stdc++
WANTLIB-docs=
RUN_DEPENDS-docs=
LIB_DEPENDS-docs=
PKG_ARCH-docs=	*

LIB_DEPENDS= wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_gl,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc::x11/wxWidgets

DOCDIST=	doc_components-2006-12-08.zip
PKGDIST=	kicad-${V}.tgz
DISTFILES=	${DISTNAME}.zip ${PKGDIST}:0 ${DOCDIST}:0
EXTRACT_ONLY=	${DISTNAME}.zip ${PKGDIST}
DIST_SUBDIR=	kicad

WRKDIST=	${WRKDIR}/kicad-dev
MAKE_FILE=	makefile.gtk
USE_GMAKE=	Yes
USE_X11=	Yes

MAKE_FLAGS=	CC=${CXX} CXX=${CXX} LD=${CXX} \
		CXXFLAGS="${CXXFLAGS}" X11BASE=${X11BASE}

KICADBIN=	eeschema pcbnew cvpcb kicad gerbview
LANGS=		de es fr hu it ko pl pt sl

pre-patch:
	@find ${WRKSRC} -type f -exec perl -pi -e 's/\r$$//' {} \;

pre-configure:
	@perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/common/eda_doc.cpp
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/common/edaappl.cpp ${WRKSRC}/common/gestfich.cpp

post-build:
.for l in ${LANGS}
	cd ${WRKDIR}/kicad/internat/$l && rm -f *.mo && \
		msgfmt -o kicad.mo kicad.po
.endfor

do-install:
.for k in ${KICADBIN}
	${INSTALL_PROGRAM} ${WRKBUILD}/$k/$k ${PREFIX}/bin
.endfor
	${INSTALL_PROGRAM} ${WRKBUILD}/eeschema/plugins/netlist_form_pads-pcb \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/kicad
	cd ${WRKDIR}/kicad && tar -cf - help library modules | tar \
		-C ${PREFIX}/share/kicad -xf -
	rmdir ${PREFIX}/share/kicad/modules/packages3d/conn_HExx
.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$l/LC_MESSAGES
	${INSTALL_DATA} ${WRKDIR}/kicad/internat/$l/kicad.mo \
		${PREFIX}/share/locale/$l/LC_MESSAGES
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kicad/library
	cd ${PREFIX}/share/doc/kicad/library && \
		unzip -q ${FULLDISTDIR}/${DOCDIST}
	cd ${PREFIX}/share/doc/kicad/library/doc && \
		mv analog_mux\&switches analog_mux_and_switches
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/kicad \
		${PREFIX}/share/doc/kicad

.include <bsd.port.mk>
