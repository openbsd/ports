# $OpenBSD: Makefile,v 1.3 2009/08/30 16:44:45 steven Exp $

COMMENT =		audit network device configuration

V =			0.12.0
DISTNAME =		nipper-cli-$V
PKGNAME =		nipper-$Vp0
CATEGORIES =		security net

HOMEPAGE =		http://nipper.sf.net/
MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB =		c m stdc++

LIB_DEPENDS=		nipper::security/libnipper

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_REGRESS =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
