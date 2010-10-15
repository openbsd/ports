# $OpenBSD: Makefile,v 1.57 2010/10/15 07:16:19 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension

MOZILLA_VERSION=	2.0.8
MOZILLA_BRANCH =	1.9.1
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-1.0beta1
REVISION-main=		1
REVISION-lightning =	4
EPOCH-lightning =	0

# must be in sync with SO_VERSION in mail/mozilla-thunderbird
# for mail/enigmail and productivity/sunbird,-seamonkey to work fine
SO_VERSION=	16.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	accessibility appcomps auth autoconfig caps chardet chrome commandlines \
	calbasecomps composer cookie docshell embedcomponents fileview gkgfxthebes gklayout \
	gkplugin htmlpars i18n imgicon imglib2 import intlapp jar50 jsd mail \
	mork mozfind mozldap msgsmime necko nsappshell oji permissions pipboot \
	pipnss pippki places pref rdf remoteservice satchel spellchecker \
	storagecomps suite system-pref tkautocomplete toolkitcomps txmgr uconv \
	ucvmath universalchardet unixproxy webbrwsr widget_gtk2 windowds \
	xpautocomplete xpconnect xpinstall zipwriter gfxpsshar gkgfx gtkxtbin \
	jsj ldap60 ldif60 mozjs prldap60 sqlite3 ssldap60 thebes xpcom \
	xpcom_core xul nullplugin unixprintplugin

CATEGORIES=	www mail net news

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES0=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${MOZILLA_VERSION}/langpack/

LANGUAGES=	be \
		ca \
		cs \
		de \
		es-AR \
		es-ES \
		fr \
		gl \
		hu \
		it \
		ka \
		lt \
		nb-NO \
		nl \
		pl \
		pt-PT \
		ru \
		sk \
		sv-SE \
		tr

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES+=	${EXTRACT_ONLY}
.for language in ${LANGUAGES}
DISTFILES+=	seamonkey-${MOZILLA_VERSION}.${language}.langpack.xpi:0
.endfor

DIST_SUBDIR=	seamonkey-${MOZILLA_VERSION}

MODULES=	www/mozilla devel/gettext lang/python
BUILD_DEPENDS+=	:unzip-*:archivers/unzip

USE_X11=	Yes
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS+=	${WRKSRC}/directory/c-sdk/config/autoconf

LIB_DEPENDS-lightning = ::${BUILD_PKGPATH},-main
WANTLIB-lightning =	seamonkey/mozjs seamonkey/xpcom c m stdc++ nspr4 plc4 plds4

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-calendar

ALL_TARGET=	default

MOZILLA_DATADIRS=	chrome components defaults dictionaries extensions \
		greprefs isp modules plugins res searchplugins

MOZILLA_AUTOCONF_DIRS =	directory/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=	config/autoconf.mk.in

GDATADIR =	${MOZ}/extensions/{a62ef8ec-5fdc-40c2-873c-223b8a6925cc}

post-install:
	${INSTALL_MAN} ${WRKSRC}/mozilla/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/
.for language in ${LANGUAGES}
	${UNZIP} -oq ${FULLDISTDIR}/seamonkey-${MOZILLA_VERSION}.${language}.langpack.xpi \
		-d ${MOZ}/extensions/langpack-${language}@seamonkey.mozilla.org
.endfor
	unzip -q ${MOB}/../xpi-stage/gdata-provider.xpi -d ${GDATADIR}

.include <bsd.port.mk>
