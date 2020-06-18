# $OpenBSD: Makefile,v 1.81 2020/06/18 07:49:37 ajacoutot Exp $

COMMENT=		framework for granting privileged operations to users

DISTNAME=		polkit-0.116
REVISION=		2

SHARED_LIBS +=  polkit-gobject-1	2.0 # .0.0
SHARED_LIBS +=  polkit-agent-1		2.0 # .0.0

CATEGORIES=		sysutils security

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/polkit

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl mozjs-68

MASTER_SITES=		https://www.freedesktop.org/software/polkit/releases/

# C++11
COMPILER=		base-clang ports-gcc

MODULES=		lang/python \
			textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection

# man pages
BUILD_DEPENDS+=		textproc/docbook-xsl

LIB_DEPENDS=		devel/glib2 \
			devel/spidermonkey68

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

# org.freedesktop.ConsoleKit
# XXX cyclic dependency: consolekit -> polkit -> consolekit
#RUN_DEPENDS +=		sysutils/consolekit

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-libelogind \
			--disable-libsystemd-login \
			--with-os-type=openbsd \
			--with-authfw=bsdauth \
			--with-polkitd-user=_polkitd

# fgetgrent, fgetpwent
CONFIGURE_ARGS +=	--disable-test

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
USE_GMAKE=		Yes

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/polkit

pre-configure:
	perl -pi \
		-e "s,/usr/bin/pkexec,${PREFIX}/bin/pkexec,g;" \
		-e "s,/usr/bin/python,${MODPY_BIN},g;" \
		-e "s,/usr/bin/my-pk-test,${PREFIX}/bin/my-pk-test,g;" \
		-e "s,/usr/share/polkit-1,${PREFIX}/share/polkit-1,g;" \
		-e "s,/etc/polkit-1,${SYSCONFDIR}/polkit-1,g;" \
		-e "s,/usr/bin/bash,${LOCALBASE}/bin/bash,g;" \
		-e "s,/usr/bin/cat,/bin/cat,g;" \
		-e "s,/usr/bin/pk-example-frobnicate,${PREFIX}/bin/pk-example-frobnicate,g;" \
		-e "s,>/etc<,>${SYSCONFDIR}<,g;" \
		-e "s,>/usr<,>${PREFIX}<,g" \
		${WRKSRC}/docs/man/pkexec.xml \
		${WRKSRC}/docs/man/polkit.xml \
		${WRKSRC}/docs/extensiondir.xml \
		${WRKSRC}/src/examples/org.freedesktop.policykit.examples.pkexec.policy.in

.include <bsd.port.mk>
