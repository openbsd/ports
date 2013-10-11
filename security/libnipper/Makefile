# $OpenBSD: Makefile,v 1.15 2013/10/11 23:50:43 naddy Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.6
REVISION =		2
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB=		m stdc++
CONFIGURE_STYLE =	cmake
MODULES +=		devel/cmake

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
