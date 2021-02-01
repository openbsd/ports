# $OpenBSD: Makefile,v 1.20 2021/02/01 20:22:29 sthen Exp $

COMMENT =	SIP swiss army knife

V =		0.9.8.1
DISTNAME =	sipsak-$V
CATEGORIES =	net

HOMEPAGE =	https://github.com/nils-ohlmeier/sipsak

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c cares gnutls

MASTER_SITES =		https://github.com/nils-ohlmeier/sipsak/releases/download/$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	net/libcares \
		security/gnutls

.include <bsd.port.mk>
