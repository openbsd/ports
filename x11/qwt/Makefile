# $OpenBSD: Makefile,v 1.4 2009/06/19 23:41:02 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Qt Widgets for Technical Applications
DISTNAME=		qwt-5.0.2
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		qwt 5.0
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://qwt.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qwt/}

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext \
			x11/qt4
NO_REGRESS=		Yes
USE_GMAKE=		Yes

MAKE_FLAGS=		LIBqwt_VERSION=${LIBqwt_VERSION}

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 m png z expat gobject-2.0

LIB_DEPENDS=		QtDesigner.>=7,QtGui.>=8,QtScript,QtXml.>=7::x11/qt4

# svgmap example not included to prevent the need of svg dependencies
EXAMPLES=	bode realtime_plot cpuplot dials radio event_filter \
		data_plot sliders histogram spectrogram sysinfo \
		curvdemo1 curvdemo2 simple_plot

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${WRKINST}${PREFIX},' \
		${WRKSRC}/qwtconfig.pri
	@perl -pi -e 's,!!QTDIR!!,${WRKINST}${PREFIX}/lib/qt4,' \
		${WRKSRC}/designer/designer.pro
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' \
		${WRKSRC}/examples/examples.pri

do-configure:
	cd ${WRKSRC} && qmake4

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/man3/* ${PREFIX}/man/man3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},' ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/examples/qwt/
	@sed -e 's,!!EXAMPLES!!,${EXAMPLES},' ${FILESDIR}/Makefile.examples > \
		${WRKSRC}/examples/Makefile
	${INSTALL_DATA} ${WRKSRC}/examples/Makefile \
		${PREFIX}/share/examples/qwt/
	${INSTALL_DATA} ${WRKSRC}/examples/examples.pri \
		${PREFIX}/share/examples/qwt/

.for i in ${EXAMPLES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt/${i}
	${INSTALL_DATA} ${WRKSRC}/examples/${i}/* \
		${PREFIX}/share/examples/qwt/${i}/
.endfor

.include <bsd.port.mk>
