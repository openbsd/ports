# $OpenBSD: Makefile,v 1.56 2014/03/26 14:56:23 ajacoutot Exp $

COMMENT=	framework for granting privileged operations to users

DISTNAME=	polkit-0.112
REVISION=	5

SHARED_LIBS +=  polkit-gobject-1	2.0 # .0.0
SHARED_LIBS +=  polkit-agent-1		2.0 # .0.0

CATEGORIES=	sysutils security

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/polkit

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat gio-2.0 glib-2.0 gobject-2.0 mozjs-17.0 pthread

MASTER_SITES=	http://www.freedesktop.org/software/polkit/releases/

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

# man pages
BUILD_DEPENDS+=	textproc/docbook-xsl

RUN_DEPENDS=	x11/dbus

LIB_DEPENDS=	devel/glib2 \
		devel/mozjs17

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-libsystemd-login \
		--mandir=${PREFIX}/man \
		--enable-introspection \
		--enable-man-pages \
		--enable-examples \
		--with-os-type=openbsd \
		--with-authfw=bsdauth \
		--with-polkitd-user=_polkitd

# fgetgrent, fgetpwent
CONFIGURE_ARGS += --disable-test

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
USE_GMAKE=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/polkit

### Remove when updating to a newer release with integrated bsd_auth(3) support.
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.11
BUILD_DEPENDS=	${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext \
		devel/gobject-introspection
# AUTOCONF needs AM_PROG_LIBTOOL
BUILD_DEPENDS+=	devel/libtool
###


pre-configure:
	perl -pi \
		-e "s,/usr/bin/pkexec,${PREFIX}/bin/pkexec,g;" \
		-e "s,/usr/bin/python,${MODPY_BIN},g;" \
		-e "s,/usr/bin/my-pk-test,${PREFIX}/bin/my-pk-test,g;" \
		-e "s,/usr/share/polkit-1,${PREFIX}/share/polkit-1,g;" \
		-e "s,/etc/polkit-1,${SYSCONFDIR}/polkit-1,g;" \
		-e "s,/usr/bin/bash,${LOCALBASE}/bin/bash,g;" \
		-e "s,/usr/bin/cat,/bin/cat,g;" \
		-e "s,/usr/bin/pk-example-frobnicate,${PREFIX}/bin/pk-example,g;" \
		-e "s,>/etc<,>${SYSCONFDIR}<,g;" \
		-e "s,>/usr<,>${PREFIX}<,g" \
		${WRKSRC}/docs/man/pkexec.xml \
		${WRKSRC}/docs/man/polkit.xml \
		${WRKSRC}/docs/extensiondir.xml \
		${WRKSRC}/src/examples/org.freedesktop.policykit.examples.pkexec.policy.in

	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		${LOCALBASE}/bin/autoreconf

.include <bsd.port.mk>
