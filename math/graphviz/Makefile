# $OpenBSD: Makefile,v 1.11 2004/08/17 19:33:09 espie Exp $

CATEGORIES=	math devel graphics

COMMENT='graph drawing software'
PKGNAME=graphviz-1.7.6
DISTFILES=gviz176.tgz
DISTNAME=gv1.7.6
MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=http://www.research.att.com/sw/tools/graphviz/
MASTER_SITES=${HOMEPAGE}dist/

PERMIT_DISTFILES_FTP=	No
PERMIT_DISTFILES_CDROM=	No
# As long as the licence is shown, everything is fine
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
USE_LIBTOOL=yes
CONFIGURE_ENV=TCLCONFIG=${LOCALBASE}/lib/tcl8.4/tclConfig.sh \
	TKCONFIG=${LOCALBASE}/lib/tk8.4/tkConfig.sh \
	LIBS=-lz \
	LDFLAGS=-L${LOCALBASE}/lib \
	CPPFLAGS='-I${LOCALBASE}/include -I${LOCALBASE}/include/tcl8.4 -I${LOCALBASE}/include/tk8.4 -I${X11BASE}/include'

CONFIGURE_ARGS=	--with-freetypeincludedir=${X11BASE}/include/freetype2 \
		--with-pngincludedir=${LOCALBASE}/include/libpng
CONFIGURE_SCRIPT=autogen.sh
CONFIGURE_ENV+=AUTOCONF_VERSION=${AUTOCONF_VERSION}
USE_GMAKE=	Yes

.include <bsd.own.mk>

ACCEPT_GRAPHVIZ_LICENSE?=No
post-extract:
.if ${ACCEPT_GRAPHVIZ_LICENSE:L} == "no"
	@echo "You must read ${WRKDIST}/COPYING first"
	@echo "To accept the license, restart the build with"
	@echo "ACCEPT_GRAPHVIZ_LICENSE=Yes"
	@exit 1
.else
	@cat ${LOCALBASE}/share/aclocal/libtool.m4 >>${WRKSRC}/aclocal.m4
.endif

LIB_DEPENDS=	tcl84.::lang/tcl/8.4 \
		tk84.::x11/tk/8.4 \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

AUTOCONF_VERSION=	2.59
BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION} \
		::devel/metaauto \
		::devel/automake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/graphviz
	${INSTALL_DATA} ${WRKDIST}/{COPYING,MINTERMS.txt,FAQ.txt} ${PREFIX}/share/doc/graphviz

SUBST_VARS=PKGNAME

.include <bsd.port.mk>
