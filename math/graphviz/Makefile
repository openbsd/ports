# $OpenBSD: Makefile,v 1.12 2004/11/27 12:10:43 sturm Exp $


COMMENT=	"graph drawing software"

DISTNAME=	graphviz-1.16
CATEGORIES=	math devel graphics

HOMEPAGE=	http://www.graphviz.org/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_FTP=	No
PERMIT_DISTFILES_CDROM=	No
# As long as the licence is shown, everything is fine
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}pub/graphviz/ARCHIVE/

MODULES=	gettext
LIB_DEPENDS=	expat.4::textproc/expat \
		jpeg.62::graphics/jpeg \
                png.2::graphics/png \
		tk84.1::x11/tk/8.4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-mylibgd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

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
	@cd ${PREFIX}/lib && ln -s graphviz/lib*.so.0.0 .

.include <bsd.port.mk>
