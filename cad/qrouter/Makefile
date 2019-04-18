# $OpenBSD: Makefile,v 1.3 2019/04/18 05:50:55 rsadowski Exp $

COMMENT =	multi-level, over-the-cell maze router for VLSI design
DISTNAME =	qrouter-1.4.50
EXTRACT_SUFX =	.tgz
CATEGORIES =	cad

HOMEPAGE =	http://opencircuitdesign.com/qrouter/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODTK_WANTLIB} c m ICE X11 SM

MASTER_SITES =	http://opencircuitdesign.com/qrouter/archive/

MODULES =	x11/tk

LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

USE_GMAKE =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.60
CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

# Not C99
CFLAGS +=	-Wno-return-type

NO_TEST =	Yes

post-patch:
	@${SUBST_CMD} ${WRKSRC}/configure.in

.include <bsd.port.mk>
