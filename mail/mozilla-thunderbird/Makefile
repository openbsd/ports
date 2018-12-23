# $OpenBSD: Makefile,v 1.281 2018/12/23 08:40:18 landry Exp $

ONLY_FOR_ARCHS =	amd64 i386
COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension

# Don't forget to bump mail/thunderbird-i18n after updates.

MOZILLA_VERSION =	60.4.0
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	thunderbird
MOZILLA_CODENAME =	comm/mail
EXTRACT_SUFX =		.tar.xz

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
# version = (TB+2)/10
PKGNAME-lightning =	lightning-6.2.4
EPOCH-lightning =	0

HOMEPAGE =	http://www.mozilla.org/thunderbird/

SO_VERSION =	33.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 lgpllibs mozgtk mozsqlite3 prldap60 xul

CATEGORIES=	mail news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla lang/python
MODPY_RUNDEP =	No

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# firefox >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes
# use bundled sqlite which has SQLITE_ENABLE_FTS3_TOKENIZER (#1252937)
MOZILLA_USE_BUNDLED_SQLITE =	Yes
# 56 requires 59.1
MOZILLA_USE_BUNDLED_ICU =	Yes
# 59 is broken with system cairo and the option is being dropped
MOZILLA_USE_BUNDLED_CAIRO = Yes
# 53 needs rust
BUILD_DEPENDS +=	lang/rust

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/b[0-9]*//}

NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

# SQLITE_CFLAGS is set from pkgconfig, but it's not used for all files that need it, e.g.
# mailnews/build/nsMailModule.cpp pulls in mailnews/extensions/fts3/src/nsFts3Tokenizer.h
# and .../fts3/src/fts3_tokenizer.h which fails to find sqlite3.h.
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

RUN_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =
WANTLIB-main += ${WANTLIB} X11-xcb Xcursor Xi intl xcb xcb-shm

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# bug 1341234
CONFIGURE_ARGS +=	--disable-stylo

# bug 857628
CONFIGURE_ARGS +=	--enable-pie

ALL_TARGET =	default

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} #\
#	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103}

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	--disable-debug-symbols		#maybe also needed
DPB_PROPERTIES +=	lonesome
.endif

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}/extensions/

post-install:
#.for xpi guid in ${GUIDS}
#	cp ${WRKBUILD}/dist/xpi-stage/${xpi}*.xpi ${EXTDIR}/${guid}.xpi
#.endfor

	mv ${PREFIX}/lib/${MOZILLA_PROJECT}/distribution/extensions/{e2fda1a4-762b-4020-b5ad-a41df1933103}.xpi \
		${EXTDIR}
	rmdir ${PREFIX}/lib/${MOZILLA_PROJECT}/distribution/extensions/
	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}/defaults/pref/all-openbsd.js
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${PREFIX}/lib/${MOZILLA_PROJECT}/distribution/distribution.ini
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

.include <bsd.port.mk>
