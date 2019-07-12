# $OpenBSD: Makefile,v 1.7 2019/07/12 21:15:35 sthen Exp $

COMMENT =	Tcl package that provides SNMP tools

V =		1.0

DISTNAME =	tcl-snmptools-${V}
REVISION =	1
CATEGORIES =	net
MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	netsnmp

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcl-snmptools/}
MODULES =	lang/tcl
LIB_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS = 	${MODTCL_RUN_DEPENDS}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
                --libdir=${MODTCL_TCLDIR} \
		CPPFLAGS="-I${LOCALBASE}/include" \
                CFLAGS="${CFLAGS} -pthread"

FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_PROGRAM='$$(INSTALL_DATA)'
NO_TEST =	Yes
SUBST_VARS =	VER

VER =		${V:S/.//g}

.include <bsd.port.mk>
