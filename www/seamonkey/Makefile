# $OpenBSD: Makefile,v 1.242 2020/10/20 14:45:50 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
ONLY_FOR_ARCHS =	amd64 i386

# version = (TB version - 3) / 100 + 2
MOZILLA_VERSION =	2.53.4
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.8.4
EPOCH-lightning =	0
REVISION-main =		0

HOMEPAGE =	http://www.seamonkey-project.org/

SO_VERSION =	47.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozavcodec mozavutil mozgtk prldap60 suite xul lgpllibs

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE=	Yes

MODULES =	www/mozilla lang/python
MODPY_RUNDEP =	No

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# gecko >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# gecko >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes
# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust>=1.43
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm
CONFIGURE_ARGS +=	--disable-gconf
NO_TEST=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

# lld blows when linking libxul
.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS +=	--enable-linker=bfd
USE_LLD=No
.endif
RUN_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB += X11-xcb intl pixman-1 xcb xcb-shm
WANTLIB += Xcursor Xi harfbuzz

WANTLIB-lightning=

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# SQLITE_CFLAGS is set from pkgconfig, but it's not used for all files that need it
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_MAN} ${WRKBUILD}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}/defaults/pref/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}/chrome/icons/default/default.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

.include <bsd.port.mk>
