# $OpenBSD: meson.port.mk,v 1.3 2017/04/27 09:02:32 ajacoutot Exp $

BUILD_DEPENDS +=	devel/meson>=0.39.1
SEPARATE_BUILD ?=	Yes

MODMESON_WANTCOLOR ?=	No
.if ${MODMESON_WANTCOLOR:L} == "no"
CONFIGURE_ENV += TERM="dumb"
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	meson
.endif

.if ! empty(INSTALL_STRIP)
CONFIGURE_ARGS +=	--strip
.endif

MODMESON_configure=	${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" CXX="${CXX}" \
				CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}" \
				LC_CTYPE="en_US.UTF-8" ${CONFIGURE_ENV} \
				${LOCALBASE}/bin/meson --buildtype=plain \
				--prefix "${PREFIX}" --mandir="${PREFIX}/man" \
				--sysconfdir="${SYSCONFDIR}" \
				${CONFIGURE_ARGS} ${WRKSRC} ${WRKBUILD}

.if !target(do-build)
do-build:
	${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v -j ${MAKE_JOBS}
.endif

.if !target(do-install)
do-install:
	${LOCALBASE}/bin/ninja -C ${WRKBUILD} ${FAKE_TARGET}
.endif

.if !target(do-test)
do-test:
	${LOCALBASE}/bin/ninja -C ${WRKBUILD} ${TEST_TARGET}
.endif
