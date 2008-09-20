# $OpenBSD: Makefile,v 1.1.1.1 2008/09/20 20:26:05 steven Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.1
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/
MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nipper/}
EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
