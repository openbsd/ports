# $OpenBSD: Makefile,v 1.17 2016/03/04 10:11:22 kirby Exp $

COMMENT =		library for nipper

DISTNAME =		libnipper-0.12.6
REVISION =		3
CATEGORIES =		security net

SHARED_LIBS =		nipper 0.0

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB=		m stdc++
MODULES +=		devel/cmake

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
