# $OpenBSD: Makefile,v 1.176 2011/04/29 07:58:10 landry Exp $

COMMENT =	Mozilla web browser
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

# Don't forget to bump www/firefox-i18n after updates.
# Don't forget to update devel/xulrunner/2.0 if patches changes.

MOZILLA_VERSION =	4.0.1
MOZILLA_BRANCH =	2.0
MOZILLA_PROJECT =	mozilla-firefox
MOZILLA_CODENAME =	browser
REVISION =	0

SO_VERSION =	23.0
NSS_SO_VERSION =	27.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps mozalloc \
		xpcom xul

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

USE_GROFF =	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-official-branding --disable-install-strip
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
CONFIGURE_ARGS +=	--with-system-zlib=/usr/ --with-system-bz2=${LOCALBASE}
WANTLIB +=	event

.if ${MACHINE_ARCH:Msparc64}
CONFIGURE_ARGS +=	--disable-tracejit --disable-methodjit
.endif

# --with-system-png=${LOCALBASE}
# no system png : apng support not bundled in

MOZILLA_AUTOCONF_DIRS +=	js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in services/crypto/modules/WeaveCrypto.js

SUBST_VARS +=	MOZILLA_VERSION NSS_SO_VERSION

post-install:
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${_MOZ_PROJECT_SHORT}.desktop \
		${PREFIX}/share/applications/${_MOZ_PROJECT_SHORT}.desktop

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-${MOZILLA_VERSION}/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
