# $OpenBSD: Makefile,v 1.138 2013/06/26 19:31:57 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
COMMENT-enigmail =	Mozilla Seamonkey GnuPG extension
BROKEN-sparc64 =	https://bugzilla.mozilla.org/show_bug.cgi?id=577056

MOZILLA_VERSION=	2.17
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite

MULTI_PACKAGES =	-main -lightning -enigmail
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-2.2beta1
ENIG_V =		1.5.1
PKGNAME-enigmail =	enigmail-seamonkey-${ENIG_V}
EPOCH-lightning =	0
EPOCH-enigmail =	0
REVISION-main =		3
REVISION-lightning =	0
REVISION-enigmail =	3

HOMEPAGE =	http://www.seamonkey-project.org/
#MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_PROJECT}/nightly/${MOZILLA_VERSION}-candidates/build1/source/
MASTER_SITES0 =	http://www.mozilla-enigmail.org/download/source/
DISTFILES +=	${MOZILLA_PROJECT}-${MOZILLA_VERSION}.source.tar.bz2 \
		enigmail-${ENIG_V}.tar.gz:0
EXTRACT_CASES =	enigmail-*.tar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | tar -C comm-${MOZILLA_BRANCH}/mailnews/extensions/ -xf -;;

SO_VERSION =	30.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozalloc mozgnome prldap60 suite xpcom xul calbasecomps \
	subprocess-${XPCOM_ABI}-gcc3

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		i386 powerpc
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64
MODCLANG_LANGS =	c c++

NO_TEST=	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/ldap/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xpcom \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/mozalloc \
			c m stdc++ nspr4 plc4 plds4 pthread

RUN_DEPENDS-enigmail =	security/gnupg
LIB_DEPENDS-enigmail =
WANTLIB-enigmail =
# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src

ENIGMAIL_DIR =	mailnews/extensions/enigmail

# add method appeared in 18
post-patch:
	echo "UNSUPPORTED(int sa_stream_set_stream_type(sa_stream_t *s,  const sa_stream_type_t stream_type))" \
		>> ${WRKSRC}/${_MOZDIR}/media/libsydneyaudio/src/sydney_audio_sndio.c

post-build:
	# build enigmail
	cd ${WRKSRC}/${ENIGMAIL_DIR} && ./makemake -o ${WRKBUILD} -r
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	cd ${WRKBUILD}/mozilla/dist/bin/chrome/enigmail && zip -r ../enigmail.jar .
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

# needed for the naming of the enigmail lib
.if ${MACHINE_ARCH:Mi386}
XPCOM_ABI =	x86
.elif ${MACHINE_ARCH:Mamd64}
XPCOM_ABI =	x86_64
.elif ${MACHINE_ARCH:Mpowerpc}
XPCOM_ABI =	ppc
.endif
SUBST_VARS += XPCOM_ABI

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
	${UNZIP} -oq ${WRKBUILD}/mozilla/dist/xpi-stage/${xpi}*.xpi -d ${EXTDIR}/${guid}
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/chrome/icons/default/${MOZILLA_PROJECT}.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

	# cleanup useless dirs from #798450 (fx 18?)
	rmdir ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/modules{/services-{aitc,common,crypto,sync{/engines,/stages,}},/identity,/accessibility,/commonjs{/promise,},}

.include <bsd.port.mk>
