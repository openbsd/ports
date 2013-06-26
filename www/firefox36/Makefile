# $OpenBSD: Makefile,v 1.35 2013/06/26 19:31:57 landry Exp $

COMMENT =	Mozilla web browser

# Don't forget to update devel/xulrunner/1.9 if patches changes.

MOZILLA_VERSION =	3.6.28
REVISION =		12
MOZILLA_BRANCH =	1.9.2
MOZILLA_PROJECT =	firefox36
MOZILLA_DIST =		firefox
MOZILLA_CODENAME =	browser

SO_VERSION =	22.4
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps browserdirprovider imgicon mozjs \
		xpcom xul nullplugin unixprintplugin

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# needed for convert xpm icon to png
BUILD_DEPENDS +=	graphics/netpbm

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

USE_GROFF =	Yes
# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-official-branding
# --with-system-png=${LOCALBASE}
# no system png : apng support not bundled in

MOZILLA_DATADIRS =	chrome components defaults dictionaries extensions \
			greprefs icons modules plugins res searchplugins

MOZILLA_AUTOCONF_DIRS +=	js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

pre-install:
	ln -sf ${MOB}/firefox{,36}
	ln -sf ${MOB}/firefox{,36}-bin

post-install:
	${INSTALL_DATA} ${FILESDIR}/browserconfig.properties ${MOB}/LICENSE ${MOB}/blocklist.xml ${MOZ}
	# create an xpm icon from the png one as nsWindow::SetWindowIconList
	# fails to load png icons : confuses the png pixbuf loader from gtk, which
	# differs from the libpng bundled in firefox
	cd ${MOZ}/chrome/icons/default/ && \
		${LOCALBASE}/bin/pngtopnm -alpha default48.png > ${WRKSRC}/alpha.pgm && \
		${LOCALBASE}/bin/pngtopnm default48.png | \
		${LOCALBASE}/bin/ppmtoxpm -alphamask=${WRKSRC}/alpha.pgm > default.xpm

.include <bsd.port.mk>
