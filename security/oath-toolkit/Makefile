# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:26 espie Exp $

COMMENT =	toolkit for OATH/HOTP and TOTP
DISTNAME =	oath-toolkit-1.6.2

SHARED_LIBS +=  oath                      0.0 # 1.1

CATEGORIES =	security devel

HOMEPAGE =	http://www.nongnu.org/oath-toolkit/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# liboath: LGPLv2.1+
# tools: GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c

MASTER_SITES = ${MASTER_SITE_SAVANNAH:=oath-toolkit/}

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
