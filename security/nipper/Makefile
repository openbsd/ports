# $OpenBSD: Makefile,v 1.9 2013/10/11 23:50:44 naddy Exp $

COMMENT =		audit network device configuration

V =			0.12.0
DISTNAME =		nipper-cli-$V
PKGNAME =		nipper-$V
REVISION =		1
CATEGORIES =		security net

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB =		c m stdc++ nipper

LIB_DEPENDS=		security/libnipper

CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
