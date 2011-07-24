# $OpenBSD: Makefile,v 1.82 2011/07/24 07:31:57 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

MOZILLA_VERSION=	2.2
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		seamonkey-2.2
PKGNAME-lightning =	lightning-seamonkey-1.0beta4
EPOCH-lightning =	0

# must be in sync with SO_VERSION in main/enigmail/seamonkey
SO_VERSION=	18.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS = ldap60 ldif60 mozalloc prldap60 suite xpcom xul calbasecomps

CATEGORIES=	www mail net news

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES0=	http://releases.mozilla.org/pub/mozilla.org/seamonkey/releases/${MOZILLA_VERSION}/langpack/

LANGUAGES=	ca \
		cs \
		de \
		en-GB \
		en-US \
		es-AR \
		es-ES \
		fi \
		fr \
		hu \
		it \
		ja \
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

MODULES=	www/mozilla devel/gettext lang/python
BUILD_DEPENDS+=	archivers/unzip

USE_GROFF =	Yes
NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS+=	${WRKSRC}/ldap/sdks/c-sdk/config/autoconf

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VERSION}/xpcom \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VERSION}/xul \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VERSION}/mozalloc \
			c m stdc++ nspr4 plc4 plds4

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ENV +=	CPPFLAGS=-I${X11BASE}/include
CONFIGURE_ARGS +=	--enable-calendar
CONFIGURE_ARGS +=	--enable-official-branding
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
CONFIGURE_ARGS +=	--with-system-zlib=/usr/ --with-system-bz2=${LOCALBASE}
WANTLIB +=	event

ALL_TARGET=	default

MOZILLA_AUTOCONF_DIRS =	ldap/sdks/c-sdk mozilla mozilla/js/src
MOZILLA_SUBST_FILES +=	configure

# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103} \
	calendar-timezones calendar-timezones@mozilla.org
EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VERSION}/extensions/

post-install:
	${INSTALL_MAN} ${WRKSRC}/mozilla/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/
.for language in ${LANGUAGES}
	${INSTALL_DATA} ${FULLDISTDIR}/seamonkey-${MOZILLA_VERSION}.${language}.langpack.xpi \
		${EXTDIR}/langpack-${language}@${MOZILLA_PROJECT}.mozilla.org.xpi
.endfor

.for xpi guid in ${GUIDS}
	${UNZIP} -oq ${MOB}/../xpi-stage/${xpi}.xpi -d ${EXTDIR}/${guid}
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${_MOZ_PROJECT_SHORT}.desktop \
		${PREFIX}/share/applications/${_MOZ_PROJECT_SHORT}.desktop ; \

.include <bsd.port.mk>
