# $OpenBSD: Makefile,v 1.72 2015/08/21 14:50:24 jasper Exp $


COMMENT=	graphical frontend for LaTeX (nearly WYSIWYG)

DISTNAME=	lyx-2.1.3
CATEGORIES=	print editors

HOMEPAGE=	http://www.lyx.org/

MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/2.1.x/ \
		ftp://ftp.ntua.gr/pub/X11/LyX/stable/2.1.x/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/lyx/stable/2.1.x/ \
		http://ftp.icm.edu.pl/packages/lyx/stable/ \
		http://lyx.cybermirror.org/stable/2.1.x/ \
		http://mirror.ufs.ac.za/applications/lyx/stable/2.1.x/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext lang/python x11/qt4

RUN_DEPENDS=	print/texlive/base \
		graphics/ImageMagick \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS=	${MODQT4_LIB_DEPENDS}>=4.5.3 \
		devel/boost \
		devel/libmagic \
		textproc/enchant \
		textproc/aspell/core

WANTLIB += lib/qt4/QtGui>=8 aspell c m pthread stdc++ z
WANTLIB += boost_regex-mt>=1 boost_signals-mt>=1
WANTLIB += glib-2.0 gmodule-2.0 enchant magic

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=		gnu

CONFIGURE_ARGS=	--with-extra-lib="${X11BASE}/lib ${LOCALBASE}/lib" \
		--with-extra-inc="${X11BASE}/include ${LOCALBASE}/include" \
		--without-hunspell \
		--without-included-boost \
		--with-packaging=posix
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN} MOC4=${MODQT4_MOC} UIC4=${MODQT4_UIC} \
		ac_cv_func_fork=yes LIBS=-pthread \
		QT4DIR=${LOCALBASE}/lib/qt4

pre-configure:
	sed -i "s,python -tt,${MODPY_BIN} -tt," \
		${WRKSRC}/src/support/os.cpp
	perl -pi -e "s,#! ?/usr/bin/(env )?python,#!${MODPY_BIN}," \
		${WRKSRC}/lib/lyx2lyx/lyx2lyx \
		${WRKSRC}/lib/scripts/listerrors \
		${WRKSRC}/src/graphics/GraphicsConverter.cpp
	find ${WRKSRC} -name "*.py" -print0 | xargs -0 \
		perl -pi -e "s,#! ?/usr/bin/(env )?python,#!${MODPY_BIN},"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/lib/images/lyx.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_DATA} ${FILESDIR}/lyx.desktop \
		${PREFIX}/share/applications/lyx.desktop

.include <bsd.port.mk>
