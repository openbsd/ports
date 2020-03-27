# $OpenBSD: Makefile,v 1.2 2020/03/27 13:23:42 abieber Exp $

COMMENT =	matrix-WhatsApp puppeting bridge

V =		20200327
COMMIT =	3a9642386cdff8293657c8409da4bffd674184bf
DISTNAME =	mautrix-whatsapp-${V}

# warning, for the .tar.gz, "go mod vendor" is not sufficient
# you need to clone https://github.com/chai2010/webp and
# copy webp/internal into vendor/github.com/chai2010/webp/

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
