# $OpenBSD: Makefile,v 1.1.1.1 2009/06/13 07:48:53 ajacoutot Exp $

COMMENT =	spelling, stemming, morphological analysis and generation

DISTNAME =	hunspell-1.2.8

SHARED_LIBS =	hunspell-1.2 	0.0 #	.0.0

CATEGORIES =	textproc

HOMEPAGE =	http://hunspell.sourceforge.net

MAINTAINER =	Edd Barrett <vext01@gmail.com>

# GPL/LGPL/MPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c curses m ncurses readline stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=hunspell/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-ui \
			--with-readline

USE_LIBTOOL =		yes

# default dictionary
RUN_DEPENDS =		::textproc/mozilla-dicts,-en-GB

REGRESS_DEPENDS =	::shells/bash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tests/test.sh \
		${WRKSRC}/src/tools/hunspell.cxx \
		${WRKSRC}/man/hu/hunspell.1 \
		${WRKSRC}/man/hunspell.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hunspell
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.aff \
		${PREFIX}/share/hunspell/default.aff
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.dic \
		${PREFIX}/share/hunspell/default.dic

.include <bsd.port.mk>
