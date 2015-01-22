# $OpenBSD: Makefile,v 1.4 2015/01/22 17:47:51 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl package that provides SNMP tools

DISTNAME =	tcl-snmptools-1.0
REVISION =	0
SHARED_LIBS =	snmptools10 1.0
CATEGORIES =	net
MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB =	netsnmp

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcl-snmptools/}
MODULES =	lang/tcl
LIB_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS = 	${MODTCL_RUN_DEPENDS}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
                --libdir=${MODTCL_TCLDIR} \
		CPPFLAGS="-I${LOCALBASE}/include" \
                CFLAGS="${CFLAGS} -pthread"

NO_TEST =    Yes

.include <bsd.port.mk>
