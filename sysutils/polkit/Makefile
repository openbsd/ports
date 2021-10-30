# $OpenBSD: Makefile,v 1.88 2021/10/30 14:26:23 ajacoutot Exp $

COMMENT=		framework for granting privileged operations to users

DISTNAME=		polkit-0.120

SHARED_LIBS += polkit-gobject-1          2.0 # 0.0.0
SHARED_LIBS += polkit-agent-1            2.0 # 0.0.0

CATEGORIES=		sysutils security

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/polkit

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl mozjs-78

MASTER_SITES=		https://www.freedesktop.org/software/polkit/releases/

# C++11
COMPILER=		base-clang ports-gcc

MODULES=		devel/meson \
			lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gobject-introspection

LIB_DEPENDS=		devel/glib2 \
			devel/spidermonkey78

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

# org.freedesktop.ConsoleKit
# XXX cyclic dependency: consolekit -> polkit -> consolekit
#RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_ARGS=		-Dsession_tracking=ConsoleKit \
			-Dpolkitd_user=_polkitd \
			-Dauthfw=bsdauth
#			-Dos_type=openbsd

# man pages
BUILD_DEPENDS +=	textproc/docbook-xsl
CONFIGURE_ARGS +=	-Dman=true

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i \
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
		${WRKSRC}/docs/extensiondir.xml.in \
		${WRKSRC}/src/examples/org.freedesktop.policykit.examples.pkexec.policy.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polkit
	mv ${WRKINST}${SYSCONFDIR}/polkit-1 ${PREFIX}/share/examples/polkit

.include <bsd.port.mk>
