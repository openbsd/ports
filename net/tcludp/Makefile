# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:57 espie Exp $

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

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcludp/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=tcludp
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples \
		SHLIB_VERSION=${LIBudp108_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

TEST_TARGET =test

.include <bsd.port.mk>
