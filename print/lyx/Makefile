# $OpenBSD: Makefile,v 1.50 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=	graphical frontend for LaTeX (nearly WYSIWYG)

DISTNAME=	lyx-1.4.3
PKGNAME=	${DISTNAME}p4
CATEGORIES=	print

HOMEPAGE=	http://www.lyx.org/

EXTRACT_SUFX?=	.tar.bz2
MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/1.4.x/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/1.4.x/

# In XForms flavor: quasi-GPL (linked to closed source library)
# In Qt flavor: GPL (this should be preferred for CD distribution)
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::print/texlive/base \
		::graphics/ImageMagick

LIB_DEPENDS=	aspell::textproc/aspell/core

WANTLIB += ICE SM X11 Xau Xdmcp c m stdc++ z

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

FLAVORS=	qt xforms
FLAVOR?=	qt

.if ${FLAVOR:L} == "qt"
MODULES+=	x11/qt3
MODQT_MT=	Yes
WANTLIB += pthread
CONFIGURE_ARGS=	--with-frontend=qt ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	LIBS=-pthread QTDIR=${MODQT_QTDIR}
.elif ${FLAVOR:L} == "xforms"
LIB_DEPENDS+=	forms,flimage::x11/xforms
WANTLIB += Xpm jpeg
CONFIGURE_ARGS=	--with-frontend=xforms
.else
ERRORS+= "Fatal: Conflicting flavor: ${FLAVOR}"
.endif

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib \
		--with-extra-inc="${LOCALBASE}/include \
		${LOCALBASE}/include/X11" \
		--disable-dependency-tracking

# Necessary because of compilation error.  See:
# http://www.boost.org/libs/graph/doc/trouble_shooting.html
CXXFLAGS+=	-ftemplate-depth-30

INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
