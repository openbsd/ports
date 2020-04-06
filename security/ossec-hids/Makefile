# $OpenBSD: Makefile,v 1.4 2020/04/06 00:04:32 pirofti Exp $

COMMENT =	host-based intrusion detection system

GH_ACCOUNT =	ossec
GH_PROJECT =	ossec-hids
GH_TAGNAME =	3.0.0
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://www.ossec.net/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += c crypto lib/inotify/inotify m magic pthread ssl

LIB_DEPENDS =	devel/libinotify \
		devel/libmagic

USE_GMAKE =	Yes
NO_BUILD =	Yes

INSTALL_FLAGS = CFLAGS="${CFLAGS}" \
		USER_NO_STOP=y \
		USER_LANGUAGE=en \
		USER_INSTALL_TYPE=server \
		USER_HYBID=go \
		USER_DIR=${PREFIX}/ossec-hids \
		USER_DELETE_DIR=n \
		USER_ENABLE_EMAIL=y \
		USER_EMAIL_ADDRESS="root@localhost" \
		USER_EMAIL_SMTP="127.0.0.1" \
		USER_ENABLE_SYSCHECK=y \
		USER_ENABLE_ROOTCHECK=y \
		USER_ENABLE_ACTIVE_RESPONSE=y \
		USER_ENABLE_FIREWALL_RESPONSE=y \
		USER_ENABLE_SYSLOG=y \
		USER_AGENT_SERVER_IP="127.0.0.1" \
		USE_INOTIFY=y \
		LOCALBASE=${LOCALBASE} \
		V=1

do-configure:
	${SUBST_CMD} ${WRKSRC}/src/headers/defs.h

do-install:
	cd ${WRKBUILD} && ${INSTALL_FLAGS} /bin/sh install.sh

.include <bsd.port.mk>
