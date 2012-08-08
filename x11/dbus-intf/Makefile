# $OpenBSD: Makefile,v 1.1.1.1 2012/08/08 11:46:35 stu Exp $

COMMENT =	high level interface to dbus-tcl

DISTNAME =	dbus-intf0.4
PKGNAME =	dbus-intf-0.4
CATEGORIES =	x11
HOMEPAGE =	http://dbus-tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dbus-tcl/}
MODULES =	lang/tcl
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	x11/dbus-tcl
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}

NO_REGRESS =	Yes

.include <bsd.port.mk>
