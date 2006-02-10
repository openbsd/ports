# $OpenBSD: Makefile,v 1.36 2006/02/10 21:17:01 espie Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.3.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	print

HOMEPAGE=	http://www.lyx.org/

MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/ \
		ftp://ftp.sdsc.edu/pub/other/lyx/stable/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/ \
		ftp://ftp.chg.ru/pub/TeX/lyx/stable/

MAINTAINER=	Zvezdan Petkovic <zvezdan@cs.wm.edu>

# In XForms flavor: quasi-GPL (linked to closed source library)
# In Qt flavor: GPL (this should be preferred for CD distribution)
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

BUILD_DEPENDS+=	:teTeX_base-*:print/teTeX/base
RUN_DEPENDS+=	:teTeX_base-*:print/teTeX/base \
		:ispell-*:textproc/ispell
USE_GMAKE=	Yes

FLAVORS=	qt xforms
FLAVOR?=	qt

.if ${FLAVOR:L} == "qt"
MODULES+=	qt3
MODQT_MT=	Yes
CONFIGURE_ARGS=	--with-frontend=qt ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV=	LIBS=-pthread
# A hack until LyX developers apply the patch to qt.m4 to respect $MOC and $UIC
CONFIGURE_ENV+=	ac_moc1=${MODQT_MOC} ac_uic=${MODQT_UIC}
WANTLIB=	ICE stdc++ c X11 m SM pthread
.elif ${FLAVOR:L} == "xforms"
LIB_DEPENDS+=	forms.1::x11/xforms
.else
ERRORS+= "Fatal: Conflicting flavor: ${FLAVOR}"
.endif

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

CONFIGURE_ARGS+=--with-extra-lib=${LOCALBASE}/lib \
		--with-extra-inc="${LOCALBASE}/include \
		${LOCALBASE}/include/X11" \
		--without-latex-config

# Necessary because of compilation error.  See:
# http://www.boost.org/libs/graph/doc/trouble_shooting.html
CXXFLAGS+=	-ftemplate-depth-30

NO_REGRESS=	Yes

INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
