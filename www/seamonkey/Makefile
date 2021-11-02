# $OpenBSD: Makefile,v 1.264 2021/11/02 15:11:40 landry Exp $

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
ONLY_FOR_ARCHS =	amd64 i386 aarch64

BROKEN =	broken after lang/rust update 1.56.0

# version = (TB version - 3) / 100 + 2
MOZILLA_VERSION =	2.53.9
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	comm/suite

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.8.9
EPOCH-lightning =	0
REVISION-main =		0

HOMEPAGE =	http://www.seamonkey-project.org/

SO_VERSION =	47.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozavcodec mozavutil mozgtk mozsqlite3 prldap60 suite xul lgpllibs

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE=	Yes

MODULES =	www/mozilla lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP =	No

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

CONFIGURE_ARGS +=	--disable-gconf
NO_TEST=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

LIB_DEPENDS +=	textproc/hunspell>=1.7
WANTLIB +=	hunspell-1.7
# option removed in 62, cf #1460600
CONFIGURE_ARGS +=	--with-system-hunspell

# lld blows when linking libxul; limit threads
.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ENV +=	LDFLAGS="-Wl,--threads=2"
# make sure we dont look for libatomic from gcc-libs
CONFIGURE_ENV +=	ac_cv_needs_atomic=no
.endif

RUN_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB += X11-xcb intl pixman-1 xcb xcb-shm
WANTLIB += Xcursor Xi harfbuzz

WANTLIB-lightning=

MAKE_ENV +=	RUSTC_BOOTSTRAP="packed_simd,encoding_rs"

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar

post-configure:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/third_party/rust/packed_simd/.cargo-checksum.json

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
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

.include <bsd.port.mk>
