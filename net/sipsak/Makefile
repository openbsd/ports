# $OpenBSD: Makefile,v 1.14 2014/07/09 16:49:35 jasper Exp $

COMMENT =	SIP swiss army knife

DISTNAME =	sipsak-0.9.6-1
CATEGORIES =	net

PKGNAME =	${DISTNAME:S/-1//}
WRKDIST =	${WRKDIR}/${DISTNAME:S/-1//}/

HOMEPAGE =	http://sipsak.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

LIB_DEPENDS =	net/libcares

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto cares

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipsak.berlios/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-gnutls \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
