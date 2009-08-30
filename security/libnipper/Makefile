# $OpenBSD: Makefile,v 1.8 2009/08/30 16:44:45 steven Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.6
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/
MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_REGRESS =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
