# $OpenBSD: Makefile,v 1.11 2010/07/30 23:13:31 lum Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.6
REVISION =		2
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB=		m stdc++
CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_REGRESS =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
