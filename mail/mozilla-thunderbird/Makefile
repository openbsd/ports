# $OpenBSD: Makefile,v 1.187 2014/03/10 20:31:06 landry Exp $

COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension
COMMENT-enigmail =	Mozilla Thunderbird GnuPG extension

# Don't forget to bump mail/thunderbird-i18n after updates.

MOZILLA_VERSION =	24.3.0
MOZILLA_BRANCH =	esr24
MOZILLA_PROJECT =	thunderbird
MOZILLA_CODENAME =	mail

MULTI_PACKAGES =	-main -lightning -enigmail
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-2.6beta3
ENIG_V =		1.5.2
PKGNAME-enigmail =	enigmail-${ENIG_V}
EPOCH-lightning =	0
EPOCH-enigmail =	0
REVISION-main =		0
REVISION-lightning =	5
REVISION-enigmail =	5

HOMEPAGE =	http://www.mozilla.org/thunderbird/

#MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla.org/${MOZILLA_PROJECT}/nightly/${MOZILLA_VERSION}-candidates/build1/source/
MASTER_SITES0 =	http://www.mozilla-enigmail.org/download/source/
DISTFILES +=	${MOZILLA_PROJECT}-${MOZILLA_VERSION}.source.tar.bz2 \
		enigmail-${ENIG_V}.tar.gz:0
EXTRACT_CASES =	enigmail-*.tar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | tar -C comm-${MOZILLA_BRANCH}/mailnews/extensions/ -xf -;;

SO_VERSION =	28.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozalloc mozgnome prldap60 xul calbasecomps \
	subprocess-${XPCOM_ABI}-gcc3
#.if ${FLAVOR:L:Mdebug}
#MOZILLA_LIBS +=	addrbook bayesflt fts3tok mailview mime mimeemitter msgbase \
#	msgcompose msgdb msgimap msglocal msgmdn msgnews vcard msgbaseutil
#.endif

CATEGORIES=	mail news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc sparc64 alpha
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	i386 amd64
MODCLANG_LANGS =	c c++

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/ldap/sdks/c-sdk/config/autoconf

CONFIGURE_STYLE =	autoconf no-autoheader

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/mozalloc \
			c m stdc++ nspr4 plc4 plds4 pthread

RUN_DEPENDS-enigmail =	security/gnupg
LIB_DEPENDS-enigmail =
WANTLIB-enigmail =

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# to be able to link when building with clang on i386
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=       --disable-debug-symbols
.endif

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src

ENIGMAIL_DIR =	mailnews/extensions/enigmail

post-build:
	# build enigmail
	cd ${WRKSRC}/${ENIGMAIL_DIR} && ./makemake -o ${WRKBUILD} -r
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	cd ${WRKBUILD}/${ENIGMAIL_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

# needed for the naming of the enigmail lib
.if ${MACHINE_ARCH:Mi386}
XPCOM_ABI =	x86
.elif ${MACHINE_ARCH:Mamd64}
XPCOM_ABI =	x86_64
.elif ${MACHINE_ARCH:Mpowerpc}
XPCOM_ABI =	ppc
.elif ${MACHINE_ARCH:Msparc64}
XPCOM_ABI =	sparc
.endif
SUBST_VARS += XPCOM_ABI

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103} \
	../bin/enigmail-${ENIG_V}-openbsd-${GNU_ARCH} {847b3a00-7ab1-11d4-8f02-006008948af5}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/extensions/
post-install:
.for xpi guid in ${GUIDS}
	${UNZIP} -oq ${WRKBUILD}/mozilla/dist/xpi-stage/${xpi}*.xpi -d ${EXTDIR}/${guid}
.endfor
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/chrome/icons/default/default256.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

	# remove useless empty dirs ?
	rm -Rf ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/modules/

.include <bsd.port.mk>
