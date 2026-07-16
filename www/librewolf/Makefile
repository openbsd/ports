COMMENT =	LibreWolf web browser
ONLY_FOR_ARCHS =	amd64 aarch64 riscv64

# This port was implemented by copying www/mozilla-firefox and modifying it.

# LibreWolf uses mozconfig, so CONFIGURE_ARGS has no effect. Instead, we patch
# mozconfig at build time (via pre-configure). We stay in sync with upstream's
# mozconfig, and OpenBSD's versioning, patching and configuration for Firefox,
# thereby syncing vicariously with the LibreWolf upstream.

# Please also know that www/firefox-i18n is unused as LibreWolf hardcodes use
# of en-US, irrespective of the main system language, for anti-fingerprinting.

# If upstream adds revision number -x, it will become plx in OpenBSD, e.g.
# librewolf-149.0.2-2 (upstream) becomes librewolf-149.0.2pl2 (patch level 2)
MOZILLA_DIST_VERSION =	152.0.6-1
MOZILLA_VERSION =	${MOZILLA_DIST_VERSION:C/-([0-9]+)$/pl\1/}

MOZILLA_PROJECT =	librewolf
MOZILLA_CODENAME =	browser
MAINTAINER =		Leah Rowe <leah@libreboot.org>

HOMEPAGE =	https://librewolf.net/
SO_VERSION =	1.0
# Bump minor ver if shlibs deleted in components dir to avoid pkg_add -r issues
MOZILLA_LIBS =	mozavcodec mozavutil mozgtk mozinference mozwayland xul \
		clearkey gkcodecs lgpllibs mozsqlite3

CATEGORIES =	www

MOZSITE =	https://codeberg.org/api/packages/librewolf/generic
SITES =		${MOZSITE}/librewolf-source/${MOZILLA_DIST_VERSION}/
EXTRACT_SUFX =	.tar.gz
DIST_SUBDIR =	librewolf

# mozilla public license
PERMIT_PACKAGE=	Yes

# We rely on www/mozilla for build logic
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

COMPILER =	ports-clang
MODCLANG_VERSION =	22
USE_LLD =	ports

# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.23.0
# wasi
BUILD_DEPENDS +=	lang/wasi-sdk/compiler-rt>=22.1.5p1 \
			lang/wasi-sdk/libcxx>=21.1.5p1 \
			lang/wasi-libc>=0.20251114p1
# mach uses pkg_resources
BUILD_DEPENDS +=	devel/py-setuptools

# audio/video support
RUN_DEPENDS =		graphics/ffmpeg

# uses pledge()
WANTLIB += Xrandr Xtst

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"
.if ${MACHINE_ARCH} == aarch64
# retguard leads to segfault at startup on arm64, cf #1973016
CONFIGURE_ENV +=	CPPFLAGS="-fno-ret-protector -Wno-backend-plugin"
.else
CONFIGURE_ENV +=	CPPFLAGS=-Wno-backend-plugin
.endif
NCPU !!=		sysctl -n hw.ncpuonline
.if ${NCPU} > 4
CONFIGURE_ENV +=	LDFLAGS="-Wl,--threads=5 --ld-path=${WRKDIR}/bin/ld"
.else
CONFIGURE_ENV +=	LDFLAGS="-Wl,--threads=${MAKE_JOBS} \
			--ld-path=${WRKDIR}/bin/ld"
.endif
# 2026497
CONFIGURE_ENV +=       MACH_BUILD_PYTHON_NATIVE_PACKAGE_SOURCE=none

MOZILLA_USE_DBUS =	Yes
MOZILLA_USE_SYSTEM_AV1 =Yes
MOZILLA_USE_SYSTEM_ZLIB=Yes

# XXX badly formed debug ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}

# not built on riscv64
COMMENT_FFVPX ?=
.if ${MACHINE_ARCH} == riscv64
COMMENT_FFVPX =		@comment # needs a trailing space
.endif
SUBST_VARS +=		COMMENT_FFVPX

TEST_IS_INTERACTIVE =	x11
# needs /etc/librewolf for pledge/unveil configs
TEST_DEPENDS =		${BUILD_PKGPATH}
# re-use virtualenv from the build instead of creating another virtualenv
TEST_ENV +=		PATH=/bin:/usr/bin MOZ_OBJDIR="${WRKBUILD}" \
			MOZ_AUTOMATION=1 HOME="${WRKSRC}"

# various strings used next in Makefile commands
MOZLIB = ${PREFIX}/lib/${MOZILLA_PROJECT}
MOZPREF = ${MOZLIB}/browser/defaults/preferences
# legacy directory also used, as in www/firefox (possible code smell ?)
MOZPREF_LEGACY = ${MOZLIB}/browser/defaults/pref
MOZDIST = ${MOZLIB}/distribution
MOZAPPS = ${PREFIX}/share/applications
MOZICONS = ${PREFIX}/share/icons/hicolor
MOZBRAND = ${WRKSRC}/browser/branding/${MOZILLA_PROJECT}
MOZPROFDATA = ${WRKDIR}/merged.profdata
MOZDIST_INI = [Global]\nid=OpenBSD\nversion=${OSREV}\n

UVCONTENT = /etc/${MOZILLA_PROJECT}/unveil.content
pre-test:
	@if grep -q "${WRKOBJDIR}" "/etc/${MOZILLA_PROJECT}/unveil.content"; \
	then \
		return 0 ; \
	else \
		echo "WARNING: ${WRKOBJDIR} r must be added to ${UVCONTENT}"; \
		return 1 ; \
	fi

MOZTEST = ${WRKSRC}/.mozbuild/srcdirs/${MOZILLA_PROJECT}-
do-test:
	cd ${WRKSRC} && \
		${SETENV} ${TEST_ENV} \
		    "${MOZTEST}"*/_virtualenvs/build/bin/python \
		    ./mach xpcshell-test --sequential --keep-going

MOZCONFIG = ${WRKSRC}/mozconfig
pre-configure:
	cp "${FILESDIR}/mozconfig-openbsd" "${MOZCONFIG}"
	sed -i -e "s,%%MOZILLA_PROJECT%%,${MOZILLA_PROJECT},g" "${MOZCONFIG}"
	sed -i -e "s,%%PREFIX%%,${PREFIX},g" "${MOZCONFIG}"
	sed -i -e "s,%%LOCALBASE%%,${LOCALBASE},g" "${MOZCONFIG}"
.if defined(DEBUG)
	# www/mozilla sets DEBUG_CONFIGURE_ARGS, but these
	# have no effect either, due to use of mozconfig
	echo "ac_add_options --enable-debug" >> "${MOZCONFIG}"
	echo "ac_add_options --enable-debug-symbols" >> "${MOZCONFIG}"
	echo "ac_add_options --disable-install-strip" >> "${MOZCONFIG}"
.else
	# these three option greatly reduce binary sizes
	echo "ac_add_options --disable-debug" >> "${MOZCONFIG}"
	echo "ac_add_options --disable-debug-symbols" >> "${MOZCONFIG}"
	echo "ac_add_options --enable-install-strip" >> "${MOZCONFIG}"
	echo "ac_add_options --disable-tests" >> "${MOZCONFIG}"
.endif
.if ${MACHINE_ARCH} != riscv64
	# LTO eats too much RAM on riscv64
	echo "ac_add_options --enable-lto=thin" >> "${MOZCONFIG}"
.endif
.if !defined(MOZILLA_USE_BUNDLED_NSS)
	echo "ac_add_options --with-system-nss" >> "${MOZCONFIG}"
.endif
.if !defined(MOZILLA_USE_BUNDLED_NSPR)
	echo "ac_add_options --with-system-nspr" >> "${MOZCONFIG}"
.endif
.if !defined(MOZILLA_USE_BUNDLED_ICU)
	echo "ac_add_options --with-system-icu" >> "${MOZCONFIG}"
.endif
.if !defined(MOZILLA_USE_BUNDLED_FFI)
	echo "ac_add_options --with-system-ffi" >> "${MOZCONFIG}"
.endif
.if defined(MOZILLA_USE_SYSTEM_AV1)
	echo "ac_add_options --with-system-av1" >> "${MOZCONFIG}"
.endif
.if defined(MOZILLA_USE_SYSTEM_ZLIB)
	echo "ac_add_options --with-system-zlib" >> "${MOZCONFIG}"
.endif
.if !defined(MOZILLA_USE_DBUS)
	echo "ac_add_options --disable-dbus" >> "${MOZCONFIG}"
.else
	echo "ac_add_options --enable-dbus" >> "${MOZCONFIG}"
.endif
.if defined(MOZILLA_PROFDATA_TASKID)
.if ${MACHINE_ARCH:Mamd64}
	echo "ac_add_options --enable-profile-use" >> "${MOZCONFIG}"
	echo "ac_add_options --with-pgo-profile-path=${MOZPROFDATA}" \
		>> "${MOZCONFIG}"
.endif
.endif
# from browser/config/mozconfig
.if ${MOZILLA_CODENAME:Mcomm*}
	echo "ac_add_options --enable-application=${MOZILLA_CODENAME}" \
		>> "${MOZCONFIG}"
.else
#1801738
	echo "ac_add_options --enable-project=${MOZILLA_CODENAME}" \
		>> "${MOZCONFIG}"
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${SUBST_MAN} ${FILESDIR}/${MOZILLA_PROJECT}.1 \
		${PREFIX}/man/man1/${MOZILLA_PROJECT}.1

	# preferences (OpenBSD defaults + sandboxing)
	${INSTALL_DATA_DIR} ${MOZPREF}
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js ${MOZPREF}/all-openbsd.js

.for f in pledge unveil
.for t in content gpu main rdd socket utility
	${INSTALL_DATA} ${FILESDIR}/${f}.${t} ${MOZPREF}/
.endfor
.endfor

	# distribution metadata
	${INSTALL_DATA_DIR} ${MOZDIST}
	echo "${MOZDIST_INI}about=Ported by ${MAINTAINER}\n" \
	    > "${MOZDIST}/distribution.ini"

	# librewolf runtime config (tweaks, policy and so on)
	${INSTALL_DATA_DIR} ${MOZLIB}
	${INSTALL_DATA} ${WRKDIST}/lw/${MOZILLA_PROJECT}.cfg ${MOZLIB}/

	${INSTALL_DATA_DIR} ${MOZDIST}
	${INSTALL_DATA} ${WRKDIST}/lw/policies.json ${MOZDIST}/policies.json

	${INSTALL_DATA_DIR} ${MOZPREF_LEGACY}
	${INSTALL_DATA} ${FILESDIR}/autoconfig.js ${MOZLIB}/defaults/pref/

	# desktop and icon files
	${INSTALL_DATA_DIR} ${MOZAPPS}
	${INSTALL_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
	    ${MOZAPPS}/${MOZILLA_PROJECT}.desktop

.for s in 16 22 24 32 48 64 128 256
	${INSTALL_DATA_DIR} ${MOZICONS}/${s}x${s}/apps
	${INSTALL_DATA} ${MOZBRAND}/default${s}.png \
	    ${MOZICONS}/${s}x${s}/apps/org.${MOZILLA_PROJECT}.png
.endfor

	${INSTALL_DATA_DIR} ${MOZICONS}/scalable/apps
	${INSTALL_DATA} ${MOZBRAND}/content/about-logo.svg \
	    ${MOZICONS}/scalable/apps/org.${MOZILLA_PROJECT}.svg

	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts
	mv ${PREFIX}/lib/${MOZILLA_PROJECT}/fonts \
	    ${PREFIX}/share/fonts/${MOZILLA_PROJECT}

	# compatibility symlink (non-ICCCM WMs)
	ln -f ${MOZLIB}/browser/chrome/icons/default/default48.png \
	    ${MOZLIB}/browser/chrome/icons/default/default.png

.include <bsd.port.mk>
