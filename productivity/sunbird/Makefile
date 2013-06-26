# $OpenBSD: Makefile,v 1.53 2013/06/26 19:31:58 landry Exp $

COMMENT =		Mozilla calendar

MOZILLA_PROJECT =	sunbird
MOZILLA_VERSION =	1.0b2
MOZILLA_DIST =		thunderbird
MOZILLA_DIST_VERSION =	3.1.19
MOZILLA_BRANCH =	1.9.2
MOZILLA_CODENAME =	calendar

EPOCH =			0
REVISION =		27

HOMEPAGE =	http://www.mozilla.org/projects/calendar/sunbird/

CATEGORIES =	productivity mail

SO_VERSION =	17.0

MOZILLA_LIBS = calbasecomps accessibility auth autoconfig caps chardet chrome \
	commandlines composer cookie docshell embedcomponents fileview gkgfxthebes \
	gklayout gkplugin htmlpars i18n imgicon imglib2 intlapp jar50 jsd jsctypes mork \
	mozfind necko nsappshell permissions pipboot pipnss pippki pref rdf \
	remoteservice satchel spellchecker storagecomps system-pref \
	tkautocomplete toolkitcomps txmgr uconv unixproxy webbrwsr widget_gtk2 \
	windowds xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx \
	gtkxtbin mozjs thebes xpcom xpcom_core xul nullplugin unixprintplugin

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUN_DEP =	No

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

# use files and patches from mail/mozilla-thunderbird
# XXX impossible until we can build sb from tb 5+
# PATCHDIR =		${PORTSDIR}/mail/mozilla-thunderbird/patches
# FILESDIR =		${PORTSDIR}/mail/mozilla-thunderbird/files

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/directory/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--enable-official-branding

ALL_TARGET=	default

MOZILLA_DATADIRS =	calendar-js chrome components defaults dictionaries extensions \
		greprefs modules plugins res

MOZILLA_AUTOCONF_DIRS =		directory/sdks/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

.include <bsd.port.mk>
