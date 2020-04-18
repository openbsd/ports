# $OpenBSD: Makefile,v 1.27 2020/04/18 20:49:05 pvk Exp $

COMMENT =	open source Slack-alternative

V =		5.22.0
GH_ACCOUNT =	mattermost
GH_PROJECT =	mattermost-server
GH_TAGNAME =	v${V}

MASTER_SITES0 =	https://releases.mattermost.com/${V}/

DISTNAME =	mattermost-server-${V}

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		mattermost-${V}-linux-amd64${EXTRACT_SUFX}:0

CATEGORIES =	net
HOMEPAGE =	https://mattermost.com/

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_LDFLAGS =	-X github.com/mattermost/mattermost-server/model.BuildNumber=${V}
NO_TEST =	Yes

post-extract:
	cp ${WRKDIR}/mattermost/config/config.json ${WRKDIST}/config/

pre-configure:
	${SUBST_CMD} ${WRKDIST}/config/config.json ${WRKDIST}/utils/fileutils/fileutils.go \
		${WRKDIST}/config/file.go ${WRKDIST}/cmd/mattermost/commands/logs.go

do-build:
	cd ${WRKSRC}/cmd/mattermost && \
		${MODGO_BUILD_CMD}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/mattermost ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mattermost/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mattermost/
	cp ${WRKSRC}/config/config.json ${PREFIX}/share/examples/mattermost/
.for _d in client fonts i18n templates
	cp -Rp ${WRKDIR}/mattermost/${_d} ${PREFIX}/share/mattermost/
.endfor

.include <bsd.port.mk>
