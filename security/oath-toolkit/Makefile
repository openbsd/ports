# $OpenBSD: Makefile,v 1.1.1.1 2011/03/16 10:10:49 sthen Exp $

COMMENT =	toolkit for OATH/HOTP and TOTP
DISTNAME =	oath-toolkit-1.6.2

SHARED_LIBS +=  oath                      0.0 # 1.1

CATEGORIES =	security devel

HOMEPAGE =	http://www.nongnu.org/oath-toolkit/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# liboath: LGPLv2.1+
# tools: GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES = ${MASTER_SITE_SAVANNAH:=oath-toolkit/}

SEPARATE_BUILD =	simple
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --disable-silent-rules

.include <bsd.port.mk>
