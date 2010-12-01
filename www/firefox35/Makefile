# $OpenBSD: Makefile,v 1.54 2010/12/01 15:00:12 dcoppa Exp $

COMMENT =	Mozilla web browser

MOZILLA_VERSION =	3.5.15
MOZILLA_BRANCH =	1.9.1
MOZILLA_PROJECT =	firefox35
MOZILLA_CODENAME =	browser
REVISION =		1

SO_VERSION =	24.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps browserdirprovider imgicon mozjs \
		xpcom xul nullplugin unixprintplugin

FLAVOR ?=
.if ${FLAVOR:L:Mdebug}
MOZILLA_LIBS += accessibility appcomps auth autoconfig caps chardet chrome \
	commandlines composer cookie docshell embedcomponents fileview \
	gkgfxthebes gklayout gkplugin htmlpars i18n imglib2 intlapp \
	jar50 jsd mozfind necko nsappshell oji permissions \
	pipboot pipnss pippki places pref rdf remoteservice \
	satchel spellchecker storagecomps system-pref tkautocomplete \
	toolkitcomps txmgr uconv ucvmath universalchardet \
	unixproxy webbrwsr widget_gtk2 windowds xpconnect xpinstall \
	zipwriter gfxpsshar gkgfx gtkxtbin jsj thebes xpcom_core
.endif

CATEGORIES =	www

HOMEPAGE=	http://www.mozilla.org/projects/firefox/

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${MOZILLA_VERSION}/source/
DISTNAME =	firefox-${MOZILLA_VERSION}.source

MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-official-branding
CONFIGURE_ARGS +=	--enable-system-sqlite
LIB_DEPENDS +=		databases/sqlite3>=3.6.16
WANTLIB +=		sqlite3>=13.3

MOZILLA_DATADIRS =	chrome components defaults dictionaries extensions \
			greprefs icons modules plugins res searchplugins

MOZILLA_AUTOCONF_DIRS +=	js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

pre-install:
	ln -sf ${MOB}/firefox{,35}
	ln -sf ${MOB}/firefox{,35}-bin

post-install:
	${INSTALL_DATA} ${FILESDIR}/browserconfig.properties ${MOB}/LICENSE ${MOB}/blocklist.xml ${MOZ}

.include <bsd.port.mk>
