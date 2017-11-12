# $OpenBSD: Makefile,v 1.79 2017/11/12 19:35:37 rsadowski Exp $

COMMENT=	graphical frontend for LaTeX (nearly WYSIWYG)

DISTNAME=	lyx-2.2.3

CATEGORIES=	print editors

HOMEPAGE=	https://www.lyx.org/

MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/2.2.x/ \
		ftp://ftp.ntua.gr/pub/X11/LyX/stable/2.2.x/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/lyx/stable/2.2.x/ \
		http://ftp.icm.edu.pl/packages/lyx/stable/ \
		http://mirror.ufs.ac.za/applications/lyx/stable/2.2.x/

WANTLIB += ${COMPILER_LIBCXX} QtGui QtSvg aspell boost_regex-mt
WANTLIB += boost_signals-mt c enchant iconv m magic z

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python \
		x11/qt4

RUN_DEPENDS=	print/texlive/base \
		devel/gettext \
		graphics/ImageMagick \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS=	${MODQT4_LIB_DEPENDS}>=4.5.3 \
		devel/boost \
		devel/libmagic \
		textproc/enchant \
		textproc/aspell/core

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=		gnu

CONFIGURE_ARGS=	--with-extra-lib="${X11BASE}/lib ${LOCALBASE}/lib" \
		--with-extra-inc="${X11BASE}/include ${LOCALBASE}/include" \
		--with-qt-dir="${MODQT4_QTDIR}" \
		--without-included-boost \
		--without-hunspell \
		--disable-cxx11 \
		--with-packaging=posix

#QTDIR=${MODQT4_QTDIR}
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN} \
		lyx_cv_callstack_printing=no \
		ac_cv_func_fork=yes LIBS=-pthread

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
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/lyx/scripts

.include <bsd.port.mk>
