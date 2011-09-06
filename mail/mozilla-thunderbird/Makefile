# $OpenBSD: Makefile,v 1.135 2011/09/06 19:42:53 landry Exp $

COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension
COMMENT-enigmail =	Mozilla Thunderbird GnuPG extension
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

# Don't forget to bump mail/thunderbird-i18n after updates.
# Don't forget to update productivity/sunbird if patches changes.

MOZILLA_VERSION =	6.0.2
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	thunderbird
MOZILLA_CODENAME =	mail

MULTI_PACKAGES =	-main -lightning -enigmail
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-1.0beta5
PKGNAME-enigmail =	enigmail-1.3
REVISION-enigmail =	0
REVISION-lightning =	0
EPOCH-lightning =	0

MASTER_SITES0 =	http://www.mozilla-enigmail.org/download/source/
DISTFILES +=	${MOZILLA_PROJECT}-${MOZILLA_VERSION}.source.tar.bz2 \
		enigmail-1.3.tar.gz:0
EXTRACT_CASES =	enigmail-*.tar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | tar -C comm-${MOZILLA_BRANCH}/mailnews/extensions/ -xf -;;

SO_VERSION =	19.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues. Whenever PKGNAME gets
# bumped and/or SO_VERSION changes, remember to update enigmail's
# SO_VERSION and LIB_DEPENDS to match.

MOZILLA_LIBS = ldap60 ldif60 mozalloc prldap60 xpcom xul calbasecomps enigmime ipc

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

RUN_DEPENDS-enigmail =	security/gnupg
LIB_DEPENDS-enigmail =	${LIB_DEPENDS-lightning}
WANTLIB-enigmail =	${WANTLIB-lightning}

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar \
			--enable-official-branding

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=		config/autoconf.mk.in

ENIGMAIL_DIR =	${WRKSRC}/mailnews/extensions/enigmail

post-build:
	# build enigmail
	cd ${ENIGMAIL_DIR} && ./makemake -r
	cd ${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	cd ${MOB}/chrome/enigmail && zip -r ../enigmail.jar .
	cd ${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103} \
	calendar-timezones calendar-timezones@mozilla.org \
	../bin/enigmail-1.2-openbsd-${GNU_ARCH} {847b3a00-7ab1-11d4-8f02-006008948af5}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VERSION}/extensions/
post-install:
.for xpi guid in ${GUIDS}
	unzip -q ${MOB}/../xpi-stage/${xpi}.xpi -d ${EXTDIR}/${guid}
	# fix maxVersion
	perl -pi -e 's|<em:maxVersion>5.*</em:maxVersion>|<em:maxVersion>${MOZILLA_VERSION}</em:maxVersion>|' ${EXTDIR}/${guid}/install.rdf
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \

.include <bsd.port.mk>
