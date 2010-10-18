# $OpenBSD: Makefile,v 1.104 2010/10/18 07:15:56 landry Exp $

COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension

# Don't forget to bump mail/thunderbird-i18n after updates.

MOZILLA_VERSION =	3.1.4
MOZILLA_BRANCH =	1.9.2
MOZILLA_PROJECT =	mozilla-thunderbird
MOZILLA_CODENAME =	mail

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-1.0beta2
EPOCH-lightning =	0
REVISION-main=		2
REVISION-lightning =	5

# need to be in synch with SO_VERSION in mail/enigmail/thunderbird
SO_VERSION =	17.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# and sunbird SO_VERSION and LIB_DEPENDS to match.

MOZILLA_LIBS =	accessibility appcomps auth autoconfig caps chardet chrome commandlines \
	calbasecomps composer cookie docshell embedcomponents fileview \
	gkgfxthebes gklayout gkplugin htmlpars i18n imgicon imglib2 import \
	intlapp jar50 jsctypes jsd mail mailcomps mork mozfind mozldap msgsmime necko \
	nsappshell permissions pipboot pipnss pippki pref rdf remoteservice \
	satchel spellchecker storagecomps system-pref tkautocomplete \
	toolkitcomps txmgr uconv ucvmath universalchardet unixproxy webbrwsr \
	widget_gtk2 windowds xpautocomplete xpconnect xpinstall zipwriter \
	gfxpsshar gkgfx gtkxtbin ldap60 ldif60 mozjs prldap60 sqlite3 ssldap60 \
	thebes xpcom xpcom_core xul nullplugin unixprintplugin

CATEGORIES=	mail news

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	www/mozilla devel/gettext lang/python

USE_X11 =	Yes
# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/directory/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader

#http://groups.google.com/group/mozilla.support.thunderbird/browse_thread/thread/c2b667c871db035a?pli=1
#system sqlite must be built with FTS3 enabled
#		--enable-system-sqlite

LIB_DEPENDS-lightning = ::${BUILD_PKGPATH},-main
WANTLIB-lightning =	mozilla-thunderbird/mozjs mozilla-thunderbird/xpcom c m stdc++ nspr4 plc4 plds4
BUILD_DEPENDS +=	::archivers/unzip #to unzip xpi

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar \
			--enable-official-branding

ALL_TARGET =	default

MOZILLA_DATADIRS =	chrome components defaults dictionaries extensions \
			greprefs isp modules plugins res

MOZILLA_AUTOCONF_DIRS =		directory/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

# guid for gdata-provider comes from em:id in install.rdf
GDATADIR =	${MOZ}/extensions/{a62ef8ec-5fdc-40c2-873c-223b8a6925cc}

post-install:
	unzip -q ${MOB}/../xpi-stage/gdata-provider.xpi -d ${GDATADIR}

.include <bsd.port.mk>
