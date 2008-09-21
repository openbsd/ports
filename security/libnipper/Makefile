# $OpenBSD: Makefile,v 1.2 2008/09/21 10:31:34 steven Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.1
PKGNAME =		${DISTNAME}p0
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/
MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nipper/}
EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
