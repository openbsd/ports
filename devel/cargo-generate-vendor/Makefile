# $OpenBSD: Makefile,v 1.2 2018/02/27 14:05:06 sthen Exp $

COMMENT =	help generating metadata for cargo vendoring

V =		1.0
DISTNAME =	cargo-generate-vendor-${V}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/semarie/cargo-generate-vendor/releases/download/${V}/

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

# use pledge()
NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cargo-vendor

.include <bsd.port.mk>
