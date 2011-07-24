# $OpenBSD: Makefile,v 1.130 2011/07/24 07:10:12 landry Exp $

COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

# Don't forget to bump mail/thunderbird-i18n after updates.
# Don't forget to update productivity/sunbird if patches changes.

MOZILLA_VERSION =	5.0
MOZILLA_BRANCH =	miramar
MOZILLA_PROJECT =	thunderbird
MOZILLA_CODENAME =	mail

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-1.0beta4
EPOCH-lightning =	0

# need to be in synch with SO_VERSION in mail/enigmail/thunderbird
SO_VERSION =	18.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# SO_VERSION and LIB_DEPENDS to match.

MOZILLA_LIBS = ldap60 ldif60 mozalloc prldap60 xpcom xul calbasecomps

#.if ${FLAVOR:L:Mdebug}
#MOZILLA_LIBS +=	addrbook bayesflt fts3tok mailview mime mimeemitter msgbase \
#	msgcompose msgdb msgimap msglocal msgmdn msgnews vcard msgbaseutil
#.endif

CATEGORIES=	mail news

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

# Regression tests are too hard to adapt to run here
NO_REGRESS =	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/ldap/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-official-branding
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
CONFIGURE_ARGS +=	--with-system-zlib=/usr/ --with-system-bz2=${LOCALBASE}
WANTLIB +=	event

# XXX solved in firefox by patch-config-autoconf_mk_in ?
CONFIGURE_ENV +=	CPPFLAGS=-I${X11BASE}/include

LIB_DEPENDS-main =	${LIB_DEPENDS}
WANTLIB-main =		${WANTLIB}
LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/thunderbird-${MOZILLA_VERSION}/xpcom \
			lib/thunderbird-${MOZILLA_VERSION}/xul \
			lib/thunderbird-${MOZILLA_VERSION}/mozalloc \
			c m stdc++ nspr4 plc4 plds4
BUILD_DEPENDS +=	archivers/unzip #to unzip xpi

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar \
			--enable-official-branding

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103} \
	calendar-timezones calendar-timezones@mozilla.org
EXTDIR =	${PREFIX}/lib/${_MOZ_PROJECT_SHORT}-${MOZILLA_VERSION}/extensions/
post-install:
.for xpi guid in ${GUIDS}
	unzip -q ${MOB}/../xpi-stage/${xpi}.xpi -d ${EXTDIR}/${guid}
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${_MOZ_PROJECT_SHORT}.desktop \
		${PREFIX}/share/applications/${_MOZ_PROJECT_SHORT}.desktop ; \

.include <bsd.port.mk>
