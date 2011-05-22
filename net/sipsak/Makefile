# $OpenBSD: Makefile,v 1.11 2011/05/22 14:03:40 jasper Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto cares

MASTER_SITES =		${MASTER_SITE_BERLIOS:=sipsak/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-gnutls \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
