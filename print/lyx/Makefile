# $OpenBSD: Makefile,v 1.57 2010/10/18 21:25:09 espie Exp $

COMMENT=	graphical frontend for LaTeX (nearly WYSIWYG)

DISTNAME=	lyx-1.6.6.1
REVISION=	1
CATEGORIES=	print editors

HOMEPAGE=	http://www.lyx.org/

MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/1.6.x/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/1.6.x/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext lang/python x11/qt4

RUN_DEPENDS=	::print/texlive/base \
		::graphics/ImageMagick

LIB_DEPENDS=	:qt4->=4.5.3:x11/qt4 \
		::devel/boost \
		::textproc/aspell/core

WANTLIB += QtGui.>=8 X11 aspell c m pthread stdc++ z
WANTLIB += boost_filesystem-mt.>=1 boost_iostreams-mt.>=1
WANTLIB += boost_regex-mt.>=1 boost_signals-mt.>=1

SEPARATE_BUILD=	concurrent
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=		gnu

CONFIGURE_ARGS=	--with-extra-lib="${X11BASE}/lib ${LOCALBASE}/lib" \
		--with-extra-inc="${X11BASE}/include ${LOCALBASE}/include" \
		--without-aiksaurus \
		--without-included-boost \
		--enable-threads=posix
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN} MOC4=${MODQT4_MOC} UIC4=${MODQT4_UIC} \
		ac_cv_func_fork=yes LIBS=-pthread

pre-configure:
	perl -pi -e "s,python -tt,${MODPY_BIN} -tt," \
		${WRKSRC}/src/support/os.cpp
	perl -pi -e "s,#! ?/usr/bin/(env )?python,#!${MODPY_BIN}," \
		${WRKSRC}/lib/lyx2lyx/lyx2lyx \
		${WRKSRC}/lib/scripts/listerrors \
		${WRKSRC}/src/graphics/GraphicsConverter.cpp
	find ${WRKSRC} -name "*.py" -print0 | xargs -0 \
		perl -pi -e "s,#! ?/usr/bin/(env )?python,#!${MODPY_BIN},"

.include <bsd.port.mk>
