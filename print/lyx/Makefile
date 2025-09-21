COMMENT=	graphical frontend for LaTeX (nearly WYSIWYG)

DISTNAME=	lyx-2.4.4
PORTROACH=	skipv:2.4.x

CATEGORIES=	print editors

HOMEPAGE=	https://www.lyx.org/

SITES=		https://ftp.lip6.fr/pub/lyx/stable/2.4.x/ \
		http://ftp.icm.edu.pl/packages/lyx/stable/2.4.x/ \
		http://mirror.ufs.ac.za/applications/lyx/stable/2.4.x/ \
		ftp://ftp.lyx.org/pub/lyx/stable/2.4.x/ \
		ftp://ftp.ntua.gr/pub/X11/LyX/stable/2.4.x/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/lyx/stable/2.4.x/

WANTLIB+= ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui Qt6Svg
WANTLIB+= Qt6SvgWidgets Qt6Widgets aspell c enchant-2 execinfo
WANTLIB+= hunspell-1.7 iconv m magic xcb xkbcommon z

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		x11/qt6

BUILD_DEPENDS=	devel/boost
TEST_DEPENDS=	devel/boost

RUN_DEPENDS=	print/texlive/base \
		graphics/ImageMagick \
		x11/gtk+4,-guic \
		devel/desktop-file-utils

LIB_DEPENDS=	devel/libmagic \
		textproc/enchant2 \
		textproc/aspell/core \
		textproc/hunspell \
		x11/qt6/qtsvg

USE_GMAKE=	Yes

CONFIGURE_STYLE=		gnu

CONFIGURE_ARGS=	--with-extra-lib="${X11BASE}/lib ${LOCALBASE}/lib" \
		--with-extra-inc="${X11BASE}/include ${LOCALBASE}/include" \
		--enable-qt6 \
		--without-included-boost \
		--with-packaging=posix

CONFIGURE_ENV+=	PYTHON=${MODPY_BIN} \
		lyx_cv_callstack_printing=no \
		ac_cv_func_fork=yes LIBS=-pthread

pre-configure:
	sed -i "s,python -tt,${MODPY_BIN} -tt," \
		${WRKSRC}/src/support/os.cpp
	perl -pi -e "s,#! ?/usr/bin/(env )?python3?,#!${MODPY_BIN}," \
		${WRKSRC}/lib/lyx2lyx/lyx2lyx \
		${WRKSRC}/lib/scripts/listerrors
	find ${WRKSRC} -name "*.py" -exec \
		perl -pi -e "s,#! ?/usr/bin/(env )?python3?,#!${MODPY_BIN}," {} +

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/lyx

.include <bsd.port.mk>
