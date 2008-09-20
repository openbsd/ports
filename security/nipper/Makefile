# $OpenBSD: Makefile,v 1.1.1.1 2008/09/20 20:28:02 steven Exp $

COMMENT =		audit network device configuration

V =			0.12.0
DISTNAME =		nipper-cli-$V
PKGNAME =		nipper-$V
CATEGORIES =		security net

HOMEPAGE =		http://nipper.sf.net/
MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nipper/}
EXTRACT_SUFX =		.tgz

WANTLIB =		c m stdc++

LIB_DEPENDS=		nipper::security/libnipper

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_REGRESS =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
