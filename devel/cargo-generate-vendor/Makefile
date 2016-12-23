# $OpenBSD: Makefile,v 1.1.1.1 2016/12/23 01:58:18 danj Exp $

COMMENT =	help generating metadata for cargo vendoring

GH_ACCOUNT =	semarie
GH_PROJECT =	cargo-generate-vendor
GH_TAGNAME =	1.0

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

# use pledge()
NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cargo-vendor

.include <bsd.port.mk>
