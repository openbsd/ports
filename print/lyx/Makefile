# $OpenBSD: Makefile,v 1.37 2006/07/05 19:35:18 sturm Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.4.1
CATEGORIES=	print

HOMEPAGE=	http://www.lyx.org/

EXTRACT_SUFX?=	.tar.bz2
MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/ \
		ftp://ftp.sdsc.edu/pub/other/lyx/stable/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/ \
		ftp://ftp.chg.ru/pub/TeX/lyx/stable/

MAINTAINER=	Zvezdan Petkovic <zpetkovic@acm.org>

# In XForms flavor: quasi-GPL (linked to closed source library)
# In Qt flavor: GPL (this should be preferred for CD distribution)
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::print/teTeX/base \
		::graphics/ImageMagick \
		::textproc/ispell

WANTLIB=	ICE SM X11 c m stdc++ z

USE_GMAKE=	Yes

FLAVORS=	qt xforms
FLAVOR?=	qt

.if ${FLAVOR:L} == "qt"
MODULES+=	qt3
MODQT_MT=	Yes
WANTLIB+=	pthread
CONFIGURE_ARGS=	--with-frontend=qt ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	LIBS=-pthread QTDIR=${MODQT_QTDIR}
.elif ${FLAVOR:L} == "xforms"
LIB_DEPENDS+=	forms.1::x11/xforms
WANTLIB+=	Xpm flimage jpeg
CONFIGURE_ARGS=	--with-frontend=xforms
.else
ERRORS+= "Fatal: Conflicting flavor: ${FLAVOR}"
.endif

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib \
		--with-extra-inc="${LOCALBASE}/include \
		${LOCALBASE}/include/X11" \
		--without-aspell \
		--without-pspell \
		--disable-dependency-tracking
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN}

# Necessary because of compilation error.  See:
# http://www.boost.org/libs/graph/doc/trouble_shooting.html
CXXFLAGS+=	-ftemplate-depth-30

NO_REGRESS=	Yes

INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
