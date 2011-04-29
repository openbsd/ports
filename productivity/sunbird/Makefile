# $OpenBSD: Makefile,v 1.25 2011/04/29 08:06:01 landry Exp $

COMMENT =		Mozilla calendar

MOZILLA_PROJECT =	sunbird
TB_VERSION =		3.1.10
MOZILLA_VERSION =	1.0beta2
MOZILLA_BRANCH =	1.9.2
MOZILLA_CODENAME =	calendar

DISTNAME =		thunderbird-${TB_VERSION}.source
EPOCH =			0
REVISION =		1

MASTER_SITES =	http://releases.mozilla.org/pub/mozilla.org/thunderbird/releases/${TB_VERSION}/source/

CATEGORIES =	productivity mail

SO_VERSION =	17.0

MOZILLA_LIBS = calbasecomps accessibility auth autoconfig caps chardet chrome \
	commandlines cookie docshell embedcomponents fileview gkgfxthebes \
	gklayout gkplugin htmlpars i18n imgicon imglib2 intlapp jar50 jsd jsctypes mork \
	mozfind necko nsappshell permissions pipboot pipnss pippki pref rdf \
	remoteservice satchel spellchecker storagecomps system-pref \
	tkautocomplete toolkitcomps txmgr uconv unixproxy webbrwsr widget_gtk2 \
	windowds xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx \
	gtkxtbin mozjs thebes xpcom xpcom_core xul nullplugin unixprintplugin

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	www/mozilla devel/gettext lang/python

# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

# use files and patches from mail/mozilla-thunderbird
PATCHDIR =		${PORTSDIR}/mail/mozilla-thunderbird/patches
FILESDIR =		${PORTSDIR}/mail/mozilla-thunderbird/files

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/directory/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	--enable-official-branding

ALL_TARGET=	default

MOZILLA_DATADIRS =	calendar-js chrome components defaults dictionaries extensions \
		greprefs modules plugins res

MOZILLA_AUTOCONF_DIRS =		directory/sdks/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

.include <bsd.port.mk>
