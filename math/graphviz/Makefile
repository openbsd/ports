# $OpenBSD: Makefile,v 1.7 2002/07/18 15:15:05 brad Exp $

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
CONFIGURE_ENV=TCLCONFIG=${LOCALBASE}/lib/tcl8.3/tclConfig.sh \
	TKCONFIG=${LOCALBASE}/lib/tk8.3/tkConfig.sh \
	LIBS=-lz \
	LDFLAGS=-L${LOCALBASE}/lib \
	CPPFLAGS='-I${LOCALBASE}/include -I${LOCALBASE}/include/tcl8.3 -I${LOCALBASE}/include/tk8.3'

CONFIGURE_ARGS=	--with-freetypeincludedir=${X11BASE}/include/freetype2 \
		--with-pngincludedir=${LOCALBASE}/include/libpng
CONFIGURE_SCRIPT=autogen.sh
USE_GMAKE=	Yes

.include <bsd.own.mk>

ACCEPT_GRAPHVIZ_LICENSE?=No
.if ${ACCEPT_GRAPHVIZ_LICENSE:L} == "no"
post-extract:
	@echo "You must read ${WRKDIST}/COPYING first"
	@echo "To accept the license, restart the build with"
	@echo "ACCEPT_GRAPHVIZ_LICENSE=Yes"
	@exit 1
.endif

LIB_DEPENDS=	tcl83.::lang/tcl/8.3 \
		tk83.::x11/tk/8.3 \
		jpeg.62::graphics/jpeg \
		png.2::graphics/png

BUILD_DEPENDS=	::devel/autoconf \
		::devel/automake

pre-configure:
	@rm ${WRKDIR}/bin/automake ${WRKDIR}/bin/aclocal

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/graphviz
	${INSTALL_DATA} ${WRKDIST}/{COPYING,MINTERMS.txt,FAQ.txt} ${PREFIX}/share/doc/graphviz

SUBST_VARS=PKGNAME

.include <bsd.port.mk>
