BROKEN-aarch64 =	third_party/rust/libc/src/lib.rs: error[E0412]: cannot find type 'c_long' in this scope

COMMENT-main =		Mozilla application suite
COMMENT-lightning =	Mozilla Seamonkey calendar extension
ONLY_FOR_ARCHS =	amd64 i386 aarch64

# version = (TB version - 3) / 100 + 2
MOZILLA_VERSION =	2.53.20b1
MOZILLA_PROJECT =	seamonkey
MOZILLA_CODENAME =	comm/suite
SITES =	https://archive.seamonkey-project.org/releases/${MOZILLA_DIST_VERSION}/source/

# unbreaks build with rust 1.83
SITES.p =	https://bugzilla.mozilla.org/
PATCHFILES.p=	bug-1896958-rust183.zip{attachment.cgi?id=9445781}
PATCH_DIST_STRIP =	-p1 -f
# || true because third_party/rust/packed_simd/Cargo.toml fails to patch but we dont care
PATCH_CASES += *.zip) \
	${UNZIP} -p $$patchfile | ${PATCH} ${PATCH_DIST_ARGS} || true ;;

SITES.whl =	https://files.pythonhosted.org/packages/py3/
WHEELS =	setuptools-70.3.0-py3-none-any.whl \
		pip-24.3.1-py3-none-any.whl \
		wheel-0.45.1-py3-none-any.whl
.for _wheel in ${WHEELS}
_wname_${_wheel} =  ${_wheel:C/-.*//}
_wfirst_${_wheel} = ${_wheel:C/(.).*/\1/}
DISTFILES.whl +=    {${_wfirst_${_wheel}}/${_wname_${_wheel}}/}${_wheel}
.endfor
EXTRACT_ONLY =	${DISTFILES}

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-seamonkey-5.8.20beta1
EPOCH-lightning =	0

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

NO_TEST=	Yes

CONFIGURE_SCRIPT =	configure.in
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
CONFIGURE_ARGS +=	--enable-linker=lld

BUILD_DEPENDS +=	devel/cbindgen>=0.6.1
# autoconf-2.13 isnt a real dependency since a while, but configure still checks for it
BUILD_DEPENDS +=	devel/autoconf/2.13
# for distutils
BUILD_DEPENDS +=	devel/py-setuptools

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
DEBUG_PACKAGES =	${BUILD_PACKAGES:N-lightning}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

post-extract:
	cd ${FULLDISTDIR}; \
	cp ${WHEELS} ${WRKSRC}/third_party/python/virtualenv/virtualenv/seed/wheels/embed

# patch doesnt grok file rename from git
# and cargo fails to checksum those if not present
post-patch:
	mv ${WRKSRC}/third_party/rust/{packed_simd,any_all_workaround}/LICENSE-APACHE
	mv ${WRKSRC}/third_party/rust/{packed_simd,any_all_workaround}/LICENSE-MIT
	# drop crate remnants to make sure cargo doesnt pickup packed_simd/Cargo.toml
	rm -Rf ${WRKSRC}/third_party/rust/packed_simd/

pre-configure:
	chmod +x ${WRKSRC}/configure.in

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
