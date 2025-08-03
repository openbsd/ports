COMMENT =	realtime ticker data in your terminal

PKGNAME =	tickrs-0.14.11

GH_ACCOUNT =	tarkah
GH_PROJECT =	tickrs
GH_TAGNAME =	v0.14.11

CATEGORIES =	productivity

HOMEPAGE =	https://github.com/tarkah/tickrs

# MIT License
PERMIT_PACKAGE =	Yes

WANTLIB += 	${MODCARGO_WANTLIB} m curl

LIB_DEPENDS =	net/curl

MODULES =		devel/cargo

MODCARGO_CRATES_UPDATE +=	tickrs-api

CONFIGURE_STYLE =	cargo

USE_GMAKE =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tickrs
	@${SUBST_DATA} ${FILESDIR}/config.yml \
		${PREFIX}/share/examples/tickrs/config.yml.sample

.include "crates.inc"

.include <bsd.port.mk>
