# $OpenBSD: Makefile,v 1.6 2021/11/06 10:38:40 ajacoutot Exp $

COMMENT =	matrix-WhatsApp puppeting bridge

MODGO_VERSION =	v0.1.7
MODGO_MODNAME =	maunium.net/go/mautrix-whatsapp
REVISION =	0

DISTNAME =	mautrix-whatsapp-${MODGO_VERSION}

EPOCH =		0

CATEGORIES =	net

HOMEPAGE =	https://github.com/tulir/mautrix-whatsapp

MAINTAINER =	Renaud Allard <renaud@allard.it>
WANTLIB +=	c m pthread

BUILD_DEPENDS =	devel/olm
RUN_DEPENDS =	devel/olm

# GNU Affero General Public License v3.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

MAKE_ENV +=	CGO_CFLAGS=-I${LOCALBASE}/include \
		CGO_LDFLAGS=-L${LOCALBASE}/lib

NO_TEST =	Yes

SUBST_VARS +=	VARBASE

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/mautrix-whatsapp \
	${PREFIX}/bin
	${INSTALL_DATA_DIR} \
	${PREFIX}/share/examples/mautrix-whatsapp
	${INSTALL_DATA} ${WRKSRC}/example-config.yaml \
	${PREFIX}/share/examples/mautrix-whatsapp

.include "modules.inc"

.include <bsd.port.mk>
