COMMENT =		encrypted and deduplicated backup tool

V =			0.12.0
DISTNAME =		bupstash-v${V}
PKGNAME =		bupstash-${V}pl1

CATEGORIES =		sysutils

HOMEPAGE =		https://bupstash.io/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m sodium

MODCARGO_DIST_SUBDIR =	cargo
DIST_SUBDIR =		bupstash
SITES =	https://github.com/andrewchambers/bupstash/releases/download/v${V}/
DISTFILES =		${DISTNAME}-man${EXTRACT_SUFX} \
			${DISTNAME}-src+deps${EXTRACT_SUFX}

SITES.p =		https://github.com/andrewchambers/bupstash/
PATCH_DIST_STRIP =	-p1
# backport "Fix index paths during put of paths in '/'." fix for
#  "Paths broken when adding multiple subdirs of /"
#  https://github.com/andrewchambers/bupstash/issues/359
PATCHFILES.p +=		trim-{commit/}a73fd83.patch
# pending "Honour --ignore-permission-errors for all path elements"
# https://github.com/andrewchambers/bupstash/pull/363
PATCHFILES.p +=		ignore-eacces-{commit/}8bf5bd1.patch
PATCHFILES.p +=		ignore-eacces-test-{commit/}290768c.patch

MODULES =		devel/cargo \
			lang/python

MODCARGO_RUSTFLAGS =	-C debuginfo=0

MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	cli-tests/mk-random-dir.py

LIB_DEPENDS =		security/libsodium
TEST_DEPENDS =		devel/bats \
			sysutils/coreutils \
			sysutils/truncate \
			textproc/gdiff \
			textproc/jq

SEPARATE_BUILD =	Yes

WRKDIST =		${WRKDIR}

do-test:
	${MODCARGO_TEST_TARGET}
	# GNU `head -c', `cmp --silent', `truncate'
.for prog in head cmp truncate
	ln -sf /usr/local/bin/g${prog} ${WRKDIR}/bin/${prog}
.endfor
	env PATH=${WRKBUILD}/target/release:${PORTPATH} \
		bats --timing ${WRKSRC}/cli-tests/

post-install:
.for m in 1 7
	${INSTALL_MAN} ${WRKSRC}/*.$m ${PREFIX}/man/man$m/
.endfor

.include <bsd.port.mk>
