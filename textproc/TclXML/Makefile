COMMENT =	XML parser for Tcl

DISTNAME =	tclxml-3.2
REVISION =	6
CATEGORIES =	textproc

SITES =		${SITE_SOURCEFORGE:=tclxml/}
HOMEPAGE =	https://tclxml.sourceforge.net/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=	Tclxml32	0.0

# custom
PERMIT_PACKAGE =		Yes

WANTLIB +=		m z exslt iconv xslt lzma pthread xml2

MODULES =		lang/tcl
BUILD_DEPENDS +=	${MODTCL_BUILD_DEPENDS}
LIB_DEPENDS +=		converters/libiconv \
			textproc/libxml \
			textproc/libxslt
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			devel/tcllib

NO_TEST =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += --with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}
MAKE_FLAGS = 	PKG_LIB_FILE=libTclxml32.so.${LIBTclxml32_VERSION} \
		PKG_DIR=tclxml

.include <bsd.port.mk>
