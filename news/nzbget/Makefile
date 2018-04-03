# $OpenBSD: Makefile,v 1.1.1.1 2018/04/03 17:45:43 bket Exp $

COMMENT =	binary newsreader supporting NZB files

VERSION =	19.1
PKGNAME =	nzbget-${VERSION}
DISTNAME =	${PKGNAME}-src

CATEGORIES =	news

HOMEPAGE =	https://nzbget.net/

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${COMPILER_LIBCXX} c crypto curses m ssl xml2 z

MASTER_SITES =	https://github.com/nzbget/nzbget/releases/download/v${VERSION}/

# C++14
COMPILER =	base-clang ports-clang ports-gcc

RUN_DEPENDS =	archivers/unrar \
		archivers/p7zip
LIB_DEPENDS =	textproc/libxml

FAKE_FLAGS =	exampleconfdir=${PREFIX}/share/examples/nzbget \
		scriptsdir=${PREFIX}/share/examples/nzbget

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libcurses-includes=/usr/include \
			--with-libcurses-libraries=/usr/lib

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/nzbget.conf

.include <bsd.port.mk>
