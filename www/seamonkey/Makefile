# $OpenBSD: Makefile,v 1.197 2017/03/07 15:26:41 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
BROKEN-sparc64 =	xpcshell SIGBUS during fake

MOZILLA_VERSION =	2.46
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite
EXTRACT_SUFX =		.tar.xz
REVISION-main =		3

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.1
EPOCH-lightning =	0

HOMEPAGE =	http://www.seamonkey-project.org/

SO_VERSION =	45.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozgtk prldap60 suite xul calbasecomps lgpllibs

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc sparc64 alpha
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

# gecko >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# gecko >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes

NO_TEST=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			c m stdc++ nspr4 plc4 plds4 pthread

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# SQLITE_CFLAGS is set from pkgconfig, but it's not used for all files that need it
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

# to be able to link when building with clang on i386 or gcc on powerpc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/extensions/

post-install:
	${INSTALL_MAN} ${WRKBUILD}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

.for xpi guid in ${GUIDS}
	cp ${WRKBUILD}/dist/xpi-stage/${xpi}*.xpi ${EXTDIR}/${guid}.xpi
.endfor
	# lightning cant be used packed as a zip because it contains a binary component
	# (libcalbasecomps.so) that the system wouldnt be able to load...
	cp -r ${WRKBUILD}/dist/bin/distribution/extensions/{e2fda1a4-762b-4020-b5ad-a41df1933103} \
		${EXTDIR}

	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/defaults/pref/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/chrome/icons/default/${MOZILLA_PROJECT}.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

.include <bsd.port.mk>
