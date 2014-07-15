# $OpenBSD: Makefile,v 1.24 2014/07/15 11:46:25 ajacoutot Exp $

COMMENT-main =		daemon for controlling APC UPSes
COMMENT-cgi =		CGI scripts for web monitoring
COMMENT-x11 =		gapcmon - GUI for apcupsd

DISTNAME =		apcupsd-3.14.11
REVISION-main =		0
REVISION-x11 =		0
PKGNAME-main =		${DISTNAME}
PKGNAME-cgi =		${DISTNAME:S/-/-cgi-/}
PKGNAME-x11 =		${DISTNAME:S/-/-x11-/}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.apcupsd.com

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext
LIB_DEPENDS-main =
WANTLIB-main =		c pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apcupsd/}

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes
NO_TEST =		Yes
MAKE_FLAGS =		VERBOSE=2

WEB_ROOT =		${VARBASE}/www
SUBST_VARS +=		WEB_ROOT ^BASESYSCONFDIR
SYSCONFDIR =		${BASESYSCONFDIR}/apcupsd

CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--sbindir=${PREFIX}/sbin \
			--enable-install-distdir \
			--with-cgi-bin=${WEB_ROOT}/cgi-bin/apcupsd \
			--with-lock-dir=/var/run \
			--with-nisip=127.0.0.1 \
			--enable-test \
			--enable-usb

PSEUDO_FLAVORS =	no_x11
FLAVOR ?=

MULTI_PACKAGES =	-main

MULTI_PACKAGES +=	-cgi
PREFIX-cgi =		${WEB_ROOT}
CONFIGURE_ARGS +=	--enable-cgi
WANTLIB-cgi =		c pthread gd
LIB_DEPENDS-cgi =	graphics/gd
RUN_DEPENDS-cgi =

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES +=	-x11
CONFIGURE_ARGS +=	--enable-gapcmon
LIB_DEPENDS-x11 =	devel/gconf2 \
			x11/gtk+2 \
			${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-x11 =	devel/desktop-file-utils \
			${MODGETTEXT_RUN_DEPENDS}

WANTLIB-x11 += ${WANTLIB}
WANTLIB-x11 += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-x11 += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB-x11 += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-x11 += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB-x11 += pangoft2-1.0 pthread z
.endif

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples/apcupsd/etc

pre-configure:
	perl -pi -e 's,/etc/apcupsd,${SYSCONFDIR},g' \
		${WRKSRC}/doc/apcupsd.8 ${WRKSRC}/doc/apcaccess.8
	perl -pi -e 's,/usr/local/etc/apcupsd,${SYSCONFDIR},g' \
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
