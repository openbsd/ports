# $OpenBSD: Makefile,v 1.235 2013/08/08 06:57:11 landry Exp $

COMMENT =	Mozilla web browser
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

# Don't forget to bump www/firefox-i18n after updates.
# Don't forget to update devel/xulrunner/2.0 if patches changes.

MOZILLA_VERSION =	23.0
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

#MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_PROJECT}/nightly/${MOZILLA_VERSION}-candidates/build1/source/
SO_VERSION =	42.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps mozalloc mozgnome xul

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

USE_GROFF =	Yes
# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
WANTLIB +=	kvm

# to be able to link when building with clang on i386 or gcc on ppc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

# XXX remove in 24
CONFIGURE_ENV+=	TERM=xterm
MAKE_ENV+=	TERM=xterm

CONFIGURE_ARGS +=	--enable-gstreamer
LIB_DEPENDS +=	multimedia/gstreamer-0.10/plugins-base

WANTLIB += gmodule-2.0 gstapp-0.10 gstbase-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 xml2

RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-good

# needs 3.0.10 when not using gcc
# CONFIGURE_ARGS += --with-system-ffi

# --with-system-png=${LOCALBASE}
# no system png : apng support not bundled in

MOZILLA_AUTOCONF_DIRS +=	js/src

post-install:
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-${MOZILLA_VERSION:C/b.//}/browser/chrome/icons/default/default{48,}.png

	# cleanup useless dirs from #798450 (fx 18?)
#	rm -Rf ${PREFIX}/lib/firefox-${MOZILLA_VERSION:C/b.//}/modules


.include <bsd.port.mk>
