# $OpenBSD: Makefile,v 1.6 2018/09/20 10:11:21 robert Exp $

COMMENT =	open source Slack-alternative

V =		5.3.1
GH_ACCOUNT =	mattermost
GH_PROJECT =	mattermost-server
GH_TAGNAME =	v${V}

MASTER_SITES0 =	https://releases.mattermost.com/${V}/

DISTNAME =	mattermost-server-${V}

DISTFILES += 	${DISTNAME}${EXTRACT_SUFX} \
		mattermost-${V}-linux-amd64${EXTRACT_SUFX}:0

CATEGORIES =	net
HOMEPAGE =	https://mattermost.com/

MAINTAINER =	Robert Nagy <robert@openbsd.org>	

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_ENV =	PATH="${PORTPATH}" HOME="${PORTHOME}"
MODGO_LDFLAGS =	-X github.com/mattermost/mattermost-server/model.BuildNumber=${V}
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/config/default.json

do-build:
	cd ${WRKSRC}/cmd/mattermost && \
		${MODGO_BUILD_CMD}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/mattermost ${PREFIX}/sbin/mattermost-server
	${INSTALL_DATA_DIR} ${PREFIX}/share/mattermost
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mattermost
	cp ${WRKSRC}/config/default.json ${PREFIX}/share/examples/mattermost
.for _d in client fonts i18n templates 
	cp -Rp ${WRKDIR}/mattermost/${_d} ${PREFIX}/share/mattermost
.endfor

.include <bsd.port.mk>
