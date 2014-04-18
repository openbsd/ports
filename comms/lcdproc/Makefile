# $OpenBSD: Makefile,v 1.9 2014/04/18 23:22:17 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		interface to various LCD displays
DISTNAME =		lcdproc-0.5.5
REVISION =		4
CATEGORIES =		comms devel
HOMEPAGE =		http://www.lcdproc.org
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

LIB_DEPENDS =		devel/libftdi \
			devel/libhid
# XXX If we ever get an xmlto update, we could build some user docs
#BUILD_DEPENDS =		textproc/xmlto
WANTLIB +=		c ftdi hid kvm ncurses pthread usb

USE_GMAKE =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lcdproc/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${WITH_APM}" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
# xosd driver is busted, working on it upstream
# http://lists.omnipotent.net/pipermail/lcdproc/2011-November/013871.html
CONFIGURE_ARGS =	--enable-drivers=all,!xosd

EXAMPLE_DIR = ${PREFIX}/share/examples/lcdproc
post-install:
# our xmlto port version is too old
#	cd ${WRKBUILD} && ${MAKE_PROGRAM} install-html-userguide
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${SUBST_CMD} -c ${WRKBUILD}/LCDd.conf ${EXAMPLE_DIR}/LCDd.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdexec/lcdexec.conf \
		${EXAMPLE_DIR}/lcdexec.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdproc/lcdproc.conf \
		${EXAMPLE_DIR}/lcdproc.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_DIR}
# lcdvc is a linux specific thing - prevent it appearing in PLIST
	rm ${PREFIX}/bin/lcdvc ${PREFIX}/man/man1/lcdvc.1

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -Dparallel=1
.else
PKG_ARGS += -Dparallel=0
.endif

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mapm}
WITH_APM =	-DWITH_APM
.endif

.include <bsd.port.mk>
