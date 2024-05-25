BROKEN-aarch64 =	third_party/rust/libc/src/lib.rs: error[E0412]: cannot find type 'c_long' in this scope

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
ONLY_FOR_ARCHS =	amd64 i386 aarch64

# version = (TB version - 3) / 100 + 2
MOZILLA_VERSION =	2.53.18.2
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	comm/suite
SITES =	https://archive.seamonkey-project.org/releases/${MOZILLA_DIST_VERSION}/source/

# unbreaks build with rust 1.78
SITES.p =	https://bugzilla.mozilla.org/
PATCHFILES.p=	bug-1896958-rust178.zip{attachment.cgi?id=9403797}
PATCH_DIST_STRIP =	-p1 -f
# || true because third_party/rust/packed_simd/Cargo.toml fails to patch but we dont care
PATCH_CASES += *.zip) \
	${UNZIP} -p $$patchfile | ${PATCH} ${PATCH_DIST_ARGS} || true ;;

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.8.18.2
EPOCH-lightning =	0
REVISION-lightning =	0
REVISION-main =		0

HOMEPAGE =	https://www.seamonkey-project.org/

SO_VERSION =	47.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozavcodec mozavutil mozgtk mozsqlite3 prldap60 suite xul lgpllibs

CATEGORIES=	www mail net news

# MPL
PERMIT_PACKAGE=	Yes

MODULES =	www/mozilla lang/python lang/clang
MODPY_RUNDEP =	No

COMPILER =		base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386
MODCLANG_COMPILER_LINKS =	No

CONFIGURE_ARGS +=	--disable-gconf
NO_TEST=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

BUILD_DEPENDS +=	devel/cbindgen>=0.6.1
# autoconf-2.13 isnt a real dependency since a while, but configure still checks for it
BUILD_DEPENDS +=	devel/autoconf/2.13

# lld blows when linking libxul; limit threads
.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ENV +=	LDFLAGS="-Wl,--threads=2"
# make sure we dont look for libatomic from gcc-libs
CONFIGURE_ENV +=	ac_cv_needs_atomic=no
.endif
# unbreak hunspell glue build with libcxx 16.0.6
CONFIGURE_ENV +=	CPPFLAGS=-Dalloc_hooks_h__

RUN_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB += Xt gthread-2.0 pangoft2-1.0

WANTLIB-lightning=

MAKE_ENV +=	RUSTC_BOOTSTRAP="any_all_workaround,version,encoding_rs"

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar
# remove post 96
CONFIGURE_ARGS +=	--disable-necko-wifi

# XXX badly formed debug ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

# patch doesnt grok file rename from git
# and cargo fails to checksum those if not present
post-patch:
	mv ${WRKSRC}/third_party/rust/{packed_simd,any_all_workaround}/LICENSE-APACHE
	mv ${WRKSRC}/third_party/rust/{packed_simd,any_all_workaround}/LICENSE-MIT
	# drop crate remnants to make sure cargo doesnt pickup packed_simd/Cargo.toml
	rm -Rf ${WRKSRC}/third_party/rust/packed_simd/

post-install:
	${INSTALL_MAN} ${WRKBUILD}/dist/man/man1/seamonkey.1 ${PREFIX}/man/man1/

	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}/defaults/pref/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${INSTALL_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \

	# install icons for desktop file
.for s in 16 22 24 32 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/comm/suite/branding/seamonkey/default${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/org.mozilla.${MOZILLA_PROJECT}.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${FILESDIR}/org.mozilla.${MOZILLA_PROJECT}.svg ${PREFIX}/share/icons/hicolor/scalable/apps/org.mozilla.${MOZILLA_PROJECT}.svg

.include <bsd.port.mk>
