# $OpenBSD: Makefile,v 1.6 2011/01/05 18:08:46 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl UDP extension

DISTNAME =	tcludp-1.0.8
REVISION =	0
SHARED_LIBS =	udp108 0.0
CATEGORIES =	net
HOMEPAGE =	http://tcludp.sourceforge.net/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcludp/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=tcludp
SEPARATE_BUILD =concurrent
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples \
		SHLIB_VERSION=${LIBudp108_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

REGRESS_TARGET =test

.include <bsd.port.mk>
