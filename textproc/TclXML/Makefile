# $OpenBSD: Makefile,v 1.21 2011/10/03 08:41:58 sebastia Exp $

COMMENT =	XML parser for Tcl

DISTNAME =	tclxml-3.2
CATEGORIES =	textproc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tclxml/}
HOMEPAGE =	http://tclxml.sourceforge.net/
MAINTAINER =	Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>

SHARED_LIBS +=	Tclxml32	0.0

# custom
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/tcl
WANTLIB +=		m z exslt xslt iconv xml2
BUILD_DEPENDS +=	${MODTCL_BUILD_DEPENDS}
LIB_DEPENDS +=		textproc/libxml \
			textproc/libxslt
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			devel/tcllib

NO_REGRESS =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += ${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}
MAKE_FLAGS = 	PKG_LIB_FILE=libTclxml32.so.${LIBTclxml32_VERSION} \
		PKG_DIR=tclxml

.include <bsd.port.mk>
