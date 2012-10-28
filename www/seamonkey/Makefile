# $OpenBSD: Makefile,v 1.118 2012/10/28 16:24:44 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
COMMENT-enigmail =	Mozilla Seamonkey GnuPG extension
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

MOZILLA_VERSION=	2.13.2
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite

MULTI_PACKAGES =	-main -lightning -enigmail
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-1.8beta1
ENIG_V =		1.4.5
PKGNAME-enigmail =	enigmail-seamonkey-${ENIG_V}
EPOCH-lightning =	0
REVISION-lightning =	2
EPOCH-enigmail =	0
REVISION-enigmail =	1

#MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_PROJECT}/nightly/${MOZILLA_VERSION}-candidates/build1/source/
MASTER_SITES0 =	http://www.mozilla-enigmail.org/download/source/
DISTFILES +=	${MOZILLA_PROJECT}-${MOZILLA_VERSION}.source.tar.bz2 \
		enigmail-${ENIG_V}.tar.gz:0
EXTRACT_CASES =	enigmail-*.tar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | tar -C comm-${MOZILLA_BRANCH}/mailnews/extensions/ -xf -;;

SO_VERSION =	26.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozalloc prldap60 suite xpcom xul calbasecomps enigmime ipc

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

NO_REGRESS=	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/ldap/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--enable-official-branding
CONFIGURE_ARGS +=	--with-system-libevent=/usr/
CONFIGURE_ARGS +=	--with-system-zlib=/usr/ --with-system-bz2=${LOCALBASE}
WANTLIB +=	event

# bug #736961
SEPARATE_BUILD =	Yes

CONFIGURE_ENV +=	CPPFLAGS=-I${X11BASE}/include

# XXX needed since 2.7b?, relocation overflow otherwise...
# replaces -g by -Os
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV +=	MOZ_DEBUG_FLAGS="-Os"
.endif



LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xpcom \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/mozalloc \
			c m stdc++ nspr4 plc4 plds4
BUILD_DEPENDS+=	archivers/unzip #to unzip xpi

RUN_DEPENDS-enigmail =	security/gnupg
LIB_DEPENDS-enigmail =	${LIB_DEPENDS-lightning}
WANTLIB-enigmail =	${WANTLIB-lightning}

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar \
			--disable-gconf

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src

ENIGMAIL_DIR =	mailnews/extensions/enigmail

post-build:
	# build enigmail
	cd ${WRKSRC}/${ENIGMAIL_DIR} && ./makemake -o ${WRKBUILD} -r
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	cd ${WRKBUILD}/mozilla/dist/bin/chrome/enigmail && zip -r ../enigmail.jar .
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103} \
	calendar-timezones calendar-timezones@mozilla.org \
	../bin/enigmail-1.5-openbsd-${GNU_ARCH} {847b3a00-7ab1-11d4-8f02-006008948af5}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/extensions/
post-install:
	${INSTALL_MAN} ${WRKBUILD}/mozilla/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

.for xpi guid in ${GUIDS}
	${UNZIP} -oq ${WRKBUILD}/mozilla/dist/xpi-stage/${xpi}.xpi -d ${EXTDIR}/${guid}
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \

	# cleanup useless dirs from #717616
	rm -Rf ${PREFIX}/lib/seamonkey-${MOZILLA_VERSION:C/b.//}/js{sub,}loader

.include <bsd.port.mk>
