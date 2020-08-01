# $OpenBSD: Makefile,v 1.19 2020/08/01 11:30:37 sthen Exp $

COMMENT =	SIP swiss army knife

DISTNAME =	sipsak-0.9.6-1
REVISION =	2
CATEGORIES =	net

PKGNAME =	${DISTNAME:S/-1//}
WRKDIST =	${WRKDIR}/${DISTNAME:S/-1//}

HOMEPAGE =	http://sipsak.org/

LIB_DEPENDS =	net/libcares

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto cares

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipsak.berlios/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-gnutls \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
