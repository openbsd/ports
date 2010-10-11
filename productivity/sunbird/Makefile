# $OpenBSD: Makefile,v 1.12 2010/10/11 08:17:46 jasper Exp $

COMMENT =		Mozilla calendar

MOZILLA_PROJECT =	sunbird
MOZILLA_VERSION =	1.0beta1
MOZILLA_BRANCH =	1.9.1
MOZILLA_CODENAME =	calendar

DISTNAME =		lightning-sunbird-1.0b1.source
REVISION =		2
EPOCH =			0

CATEGORIES =	productivity mail

# need to be in synch with SO_VERSION in
# mail/mozilla-thunderbird and www/seamonkey for lighting to work
SO_VERSION =	16.0

MOZILLA_LIBS = calbasecomps accessibility auth autoconfig caps chardet chrome \
	commandlines cookie docshell embedcomponents fileview gkgfxthebes \
	gklayout gkplugin htmlpars i18n imgicon imglib2 intlapp jar50 jsd mork \
	mozfind necko nsappshell permissions pipboot pipnss pippki pref rdf \
	remoteservice satchel spellchecker storagecomps system-pref \
	tkautocomplete toolkitcomps txmgr uconv unixproxy webbrwsr widget_gtk2 \
	windowds xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx \
	gtkxtbin mozjs sqlite3 thebes xpcom xpcom_core xul nullplugin unixprintplugin

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/calendar/${MOZILLA_PROJECT}/releases/${MOZILLA_VERSION}/source/

MODULES =	www/mozilla devel/gettext lang/python

USE_X11 =	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/directory/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--enable-official-branding

ALL_TARGET=	default

MOZILLA_DATADIRS =	calendar-js chrome components defaults dictionaries extensions \
		greprefs icons modules plugins res

MOZILLA_AUTOCONF_DIRS =		directory/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

.include <bsd.port.mk>
