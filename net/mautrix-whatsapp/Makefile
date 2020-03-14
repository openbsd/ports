# $OpenBSD: Makefile,v 1.1.1.1 2020/03/14 16:17:39 abieber Exp $

COMMENT =	matrix-WhatsApp puppeting bridge

V =		20200225
DISTNAME =	mautrix-whatsapp-${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/tulir/mautrix-whatsapp

MAINTAINER =	Renaud Allard <renaud@allard.it>

WANTLIB +=	c m pthread

MASTER_SITES =	https://elendil.arnor.org/OpenBSD/

# GNU Affero General Public License v3.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

ALL_TARGET =	maunium.net/go/mautrix-whatsapp

NO_TEST =	Yes

SUBST_VARS +=	VARBASE

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/mautrix-whatsapp \
	${PREFIX}/bin
	${INSTALL_DATA_DIR} \
	${PREFIX}/share/examples/mautrix-whatsapp
	${INSTALL_DATA} ${WRKSRC}/example-config.yaml \
	${PREFIX}/share/examples/mautrix-whatsapp

.include <bsd.port.mk>
