# $OpenBSD: Makefile,v 1.34 2019/07/12 20:46:05 sthen Exp $

COMMENT =		file editor/viewer/analyzer for executables

DISTNAME =		ht-2.1.0
CATEGORIES =		editors
REVISION =		6

HOMEPAGE =		http://hte.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c m curses ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hte/}

EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

FLAVORS =		no_x11
FLAVOR ?=

LIB_DEPENDS =		archivers/lzo2
WANTLIB +=		lzo2

CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--program-transform-name='s/ht/hte/'

.if ${FLAVOR:Mno_x11}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS +=	--disable-x11-textmode
.else
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			X11BASE=${X11BASE}
CONFIGURE_ARGS +=	--enable-x11-textmode
WANTLIB +=		X11
.endif

do-install:
	chmod +x ${WRKSRC}/install-sh

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ht ${PREFIX}/bin/hte
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ht
	${INSTALL_DATA} ${WRKSRC}/doc/{README,ht.html} ${PREFIX}/share/doc/ht

.include <bsd.port.mk>
