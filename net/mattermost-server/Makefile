# as of 7.8.0, the version of modernc.org/sqlite used doesn't seem
# to support other archs
ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT-main =	open source Slack-alternative
COMMENT-mmctl =	command-line tool for managing Mattermost

V =		10.11.2

# ftp https://github.com/mattermost/mattermost/archive/refs/tags/v{$V}.tar.gz
# tar xvvzf v{$V}.tar.gz
# cd mattermost-{$V}/server/ && rm enterprise/external_imports.go && go mod vendor
# rm -rf vendor/github.com/mattermost/mattermost
# cd .. && mkdir /tmp/mattermost-server-vendored-{$V} && cp -r server /tmp/mattermost-server-vendored-{$V}/
# cd /tmp/ && tar -cvvf mattermost-server-vendored-{$V}.tar mattermost-server-vendored-{$V}
# gzip -9vo mattermost-server-vendored-{$V}.tar.gz mattermost-server-vendored-{$V}.tar
DISTNAME =		mattermost-server-vendored-${V}
FULLPKGNAME-main =	mattermost-server-${V}
FULLPKGPATH-main =	net/mattermost-server,-main
FULLPKGNAME-mmctl =	mmctl-${V}
FULLPKGPATH-mmctl =	net/mattermost-server,-mmctl

SITES =		https://ports.mocheryl.org/releases/
SITES.a =	https://releases.mattermost.com/${V}/

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES.a += 	mattermost-${V}-linux-amd64${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://mattermost.com/

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -mmctl

WANTLIB += 	c pthread

MODULES =	lang/go
ALL_TARGET =    github.com/mattermost/mattermost
MODGO_LDFLAGS = -X github.com/mattermost/mattermost/server/public/model.BuildNumber=${V}

NO_TEST =	Yes

post-extract:
	cp ${WRKDIR}/mattermost/config/config.json ${WRKDIST}/server/config/

pre-configure:
	${SUBST_CMD} ${WRKDIST}/server/channels/utils/fileutils/fileutils.go \
	${WRKDIST}/server/config/{config.json,file.go}

do-build:
	cd ${WRKSRC}/server && ${MODGO_BUILD_CMD} ./cmd/...

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/{mattermost,mmctl} \
		${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mattermost/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mattermost/
	cp ${WRKSRC}/server/config/config.json \
		${PREFIX}/share/examples/mattermost/
.for _d in client fonts i18n templates
	cp -Rp ${WRKDIR}/mattermost/${_d} ${PREFIX}/share/mattermost/
.endfor

.include <bsd.port.mk>
