# $OpenBSD: Makefile,v 1.2 2012/01/09 07:58:07 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl package that provides SNMP tools

DISTNAME =	tcl-snmptools-1.0
REVISION =	0
SHARED_LIBS =	snmptools10 1.0
CATEGORIES =	net
MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	netsnmp

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcl-snmptools/}
MODULES =	lang/tcl
LIB_DEPENDS =	net/net-snmp
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS = 	${MODTCL_RUN_DEPENDS}

USE_GROFF =		yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
                --libdir=${MODTCL_TCLDIR} \
		CPPFLAGS="-I${LOCALBASE}/include" \
                CFLAGS="${CFLAGS} -pthread"

NO_REGRESS =    Yes

.include <bsd.port.mk>
