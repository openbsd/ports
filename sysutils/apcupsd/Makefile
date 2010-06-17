# $OpenBSD: Makefile,v 1.3 2010/06/17 18:43:43 sthen Exp $

COMMENT-main =		daemon for controlling APC UPSes
COMMENT-cgi =		CGI scripts for web monitoring
COMMENT-x11 =		gapcmon - GUI for apcupsd

DISTNAME =		apcupsd-3.14.8
PKGNAME-main =		${DISTNAME}p1
PKGNAME-cgi =		${DISTNAME:S/-/-cgi-/}
PKGNAME-x11 =		${DISTNAME:S/-/-x11-/}p0

CATEGORIES =		sysutils

HOMEPAGE =		http://www.apcupsd.com

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2 

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pthread
MODULES =		devel/gettext
LIB_DEPENDS-main =

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apcupsd/}

CONFIGURE_STYLE =	gnu old # old prevents overriding sysconfdir
USE_GMAKE =		Yes
MAKE_FLAGS =		VERBOSE=2

WEB_ROOT =		/var/www
SUBST_VARS +=		WEB_ROOT

CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--sbindir=${PREFIX}/sbin \
			--sysconfdir=${SYSCONFDIR}/apcupsd \
			--enable-install-distdir \
			--with-cgi-bin=${WEB_ROOT}/cgi-bin/apcupsd \
			--with-lock-dir=/var/run \
			--with-nisip=127.0.0.1 \
			--enable-usb

PSEUDO_FLAVORS =	no_x11
FLAVORS =		snmp
FLAVOR ?=

MULTI_PACKAGES =	-main

MULTI_PACKAGES +=	-cgi
PREFIX-cgi =		${WEB_ROOT}
CONFIGURE_ARGS +=	--enable-cgi
LIB_DEPENDS-cgi =	gd::graphics/gd
RUN_DEPENDS-cgi =

.if !${FLAVOR:L:Mno_x11}
MULTI_PACKAGES +=	-x11
USE_X11 =		Yes
CONFIGURE_ARGS +=	--enable-gapcmon
LIB_DEPENDS-x11 =	atk-1.0.>=2009::devel/atk \
			cairo.>=7::graphics/cairo \
			gconf-2.>=6::devel/gconf2 \
			${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-x11 =	:desktop-file-utils-*:devel/desktop-file-utils \
			${MODGETTEXT_RUN_DEPENDS}

WANTLIB-x11 += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB-x11 += Xfixes Xi Xinerama Xrandr Xrender dbus-1 expat fontconfig
WANTLIB-x11 += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-x11 += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB-x11 += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB-x11 += pthread-stubs xcb xcb-render xcb-render-util z ${WANTLIB}
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS +=	--enable-net-snmp
LIB_DEPENDS-main +=	netsnmp::net/net-snmp
WANTLIB-main =		${WANTLIB} crypto
.endif

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples/apcupsd/etc

pre-configure:
	perl -pi -e 's,/etc/apcupsd,${SYSCONFDIR}/apcupsd,g' \
		${WRKSRC}/doc/apcupsd.8 ${WRKSRC}/doc/apcaccess.8
	perl -pi -e 's,/usr/local/etc/apcupsd,${SYSCONFDIR}/apcupsd,g' \
		${WRKSRC}/doc/apcupsd.conf.5
	perl -pi -e 's,/etc/rc.apcupsd,${PREFIX}/sbin/apcupsctl,' \
		${WRKSRC}/platforms/openbsd/README
	perl -pi -e 's,cuaa0,cua00,' ${WRKSRC}/platforms/openbsd/README

post-install:
.for i in status rpt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apcupsd/$i
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/apcupsd
	${INSTALL_DATA} ${WRKSRC}/examples/status/* \
		${PREFIX}/share/examples/apcupsd/status
	${INSTALL_DATA} ${WRKSRC}/examples/rpt/* \
		${PREFIX}/share/examples/apcupsd/rpt
	${INSTALL_DATA} ${WRKSRC}/c ${PREFIX}/share/doc/apcupsd/COPYRIGHT
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/apcupsd
	${INSTALL_DATA} ${WRKSRC}/DISCLAIMER ${PREFIX}/share/doc/apcupsd
	${INSTALL_DATA} ${WRKSRC}/platforms/openbsd/README \
		${PREFIX}/share/doc/apcupsd/README.openbsd
	${INSTALL_DATA} ${WRKSRC}/src/cgi/apcupsd.css \
		${PREFIX}/share/examples/apcupsd/etc
	${INSTALL_DATA} ${WRKSRC}/src/cgi/README \
		${WRKINST}/${WEB_ROOT}/cgi-bin/apcupsd/README
	${INSTALL_SCRIPT} ${FILESDIR}/copy-libs.sh \
		${WRKINST}/${WEB_ROOT}/cgi-bin/apcupsd/
	cd ${PREFIX}/share; chown -R root:wheel doc/apcupsd examples/apcupsd
	chmod 755 ${PREFIX}/sbin/apcupsctl

.include <bsd.port.mk>
