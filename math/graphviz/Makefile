# $OpenBSD: Makefile,v 1.18 2006/08/03 20:04:51 espie Exp $

COMMENT=	"graph drawing software"

DISTNAME=	graphviz-1.16
PKGNAME=	${DISTNAME}p2
CATEGORIES=	math devel graphics

SHARED_LIBS=	agraph		0.0 \
		cdt		0.0 \
		circogen	0.0 \
		common		0.0 \
		dotgen		0.0 \
		dotneato	0.0 \
		expr		0.0 \
		fdpgen		0.0 \
		gdtclft		0.0 \
		graph		0.0 \
		gvgd		0.0 \
		gvrender	0.0 \
		neatogen	0.0 \
		pack		0.0 \
		pathplan	0.0 \
		tcldot		0.0 \
		tclplan		0.0 \
		tkspline	0.0 \
		twopigen	0.0

HOMEPAGE=	http://www.graphviz.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_FTP=	No
PERMIT_DISTFILES_CDROM=	No
# As long as the licence is shown, everything is fine
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c fontconfig freetype m z

MASTER_SITES=	${HOMEPAGE}pub/graphviz/ARCHIVE/

MODULES=	converters/libiconv
LIB_DEPENDS=	expat.>=4::textproc/expat \
		jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png
BUILD_DEPENDS=	:tk-8.4.*:x11/tk/8.4
RUN_DEPENDS=	${BUILD_DEPENDS}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-mylibgd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

FAKE_FLAGS=	htmldir="${DOCBASE}/html" \
		pdfdir="${DOCBASE}/pdf" \
		txtdir="${DOCBASE}" \
		demodir="${EXBASE}/demo" \
		directeddir="${EXBASE}/graphs/directed" \
		leftydir="${EXBASE}/lefty" \
		pathplanexampledir="${EXBASE}/demo/pathplan_data" \
		undirecteddir="${EXBASE}/graphs/undirected"

SUBST_VARS=	PKGNAME

.include <bsd.own.mk>

ACCEPT_GRAPHVIZ_LICENSE?=No
post-extract:
.if ${ACCEPT_GRAPHVIZ_LICENSE:L} == "no"
	@echo "You must read ${WRKDIST}/COPYING first"
	@echo "To accept the license, restart the build with"
	@echo "ACCEPT_GRAPHVIZ_LICENSE=Yes"
	@exit 1
.endif

post-install:
.for _n _e in ${SHARED_LIBS}
	@cd ${PREFIX}/lib && ln -s graphviz/lib${_n}.so.${_e} .
.endfor

.include <bsd.port.mk>
