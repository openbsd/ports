# $OpenBSD: Makefile,v 1.15 2018/10/24 14:28:10 sthen Exp $

COMMENT =		audit network device configuration

V =			0.12.0
DISTNAME =		nipper-cli-$V
PKGNAME =		nipper-$V
REVISION =		4
CATEGORIES =		security net

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB =		c m ${COMPILER_LIBCXX} nipper

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		security/libnipper

MODULES +=		devel/cmake

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
