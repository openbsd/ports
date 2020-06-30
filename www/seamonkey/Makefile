# $OpenBSD: Makefile,v 1.237 2020/06/30 13:58:13 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
ONLY_FOR_ARCHS =	amd64 i386
BROKEN-amd64 =		xpcshell segfaults during fake since llvm8 update

# version = (TB version - 3) / 100 + 2
MOZILLA_VERSION =	2.49.5
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	suite
REVISION =	3

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.4.5
EPOCH-lightning =	0

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
CONFIGURE_ARGS +=	--enable-default-toolkit=cairo-gtk2
NO_TEST=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

RUN_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB += X11-xcb intl pixman-1 xcb xcb-shm
WANTLIB-lightning=

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

# SQLITE_CFLAGS is set from pkgconfig, but it's not used for all files that need it
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_MAN} ${WRKBUILD}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

	cp ${WRKBUILD}/dist/xpi-stage/gdata-provider*xpi \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/distribution/extensions/{a62ef8ec-5fdc-40c2-873c-223b8a6925cc}.xpi

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
