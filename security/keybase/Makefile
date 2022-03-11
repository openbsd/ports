# go-ps only supports amd64 on OpenBSD
# ../vendor/github.com/keybase/go-ps/process.go:39: undefined: processes
# ../vendor/github.com/keybase/go-ps/process.go:47: undefined: findProcess
ONLY_FOR_ARCHS = amd64

COMMENT =	client for keybase.io

V =		v5.2.0
REVISION =	2
DISTNAME =	keybase-${V}
PKGNAME =	keybase-${V:S/v//}
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	security
HOMEPAGE =	https://keybase.io

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/keybase/client/releases/download/${V}/

RUN_DEPENDS =	security/gnupg>=2.2.23p1

WANTLIB += c pthread

WRKDIST =		${WRKDIR}/client-${V}
ALL_TARGET =		github.com/keybase/client

MODULES =		lang/go
MODGO_TYPE =		bin

NO_TEST =		Yes

# Until github.com/bazil/fuse/pull/104 is fixed, we need to use this
# workaround. Despite the name, kbfsfuse is a daemon for some keybase
# services and the FUSE support is optional.
pre-build:
	cd ${WRKSRC}/go/vendor/bazil.org/fuse && \
		for i in *freebsd*.go fs/fstestutil/*freebsd*.go; \
		do mv -v "$$i" $$(echo "$$i" | sed -e 's,freebsd,openbsd,g'); \
		done && \
		sed -i "s/syscall\.EPROTO/syscall\.EIO/g" fuse.go
	cd ${WRKSRC}/go/kbfs/kbfsfuse && \
		sed -i "s/defaultMountType = \"\"/defaultMountType = \"none\"/" defaults.go && \
		sed -i "s/defaultMountType = \"force\"/defaultMountType = \"none\"/" defaults_production.go

do-build:
	cd ${WRKSRC}/go/keybase && ${MODGO_CMD} build -tags \
		production
	cd ${WRKSRC}/go/kbfs/kbfsgit/git-remote-keybase && \
		${MODGO_CMD} build -tags production
	cd ${WRKSRC}/go/kbfs/kbfsfuse && \
		${MODGO_CMD} build -tags production

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/go/keybase/keybase ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/go/kbfs/kbfsgit/git-remote-keybase/git-remote-keybase ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/go/kbfs/kbfsfuse/kbfsfuse ${PREFIX}/bin/
	${SUBST_CMD} -m 755 -c ${FILESDIR}/run_keybase \
		${PREFIX}/bin/run_keybase

.include <bsd.port.mk>
