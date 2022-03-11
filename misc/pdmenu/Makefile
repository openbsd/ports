COMMENT=		simple slang-based menu program

DISTNAME=		pdmenu-1.3.6
CATEGORIES=     	misc

HOMEPAGE=		https://kitenet.net/programs/pdmenu

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=  c curses iconv intl m slang

MASTER_SITES=		https://git.kitenet.net/index.cgi/pdmenu.git/snapshot/

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libslang
DESTDIRNAME=		INSTALL_PREFIX

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61

CFLAGS+=		-I${LOCALBASE}/include -L${LOCALBASE}/lib
#CONFIGURE_ARGS=		--datadir=${PREFIX}/share/examples
CONFIGURE_ENV=		LIBS="-lm -lcurses -lintl -liconv" \
			SLANG_LIB_LOC=${LOCALBASE}/lib \
			SLANG_H_LOC=${LOCALBASE}/include/slang.h

NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pdmenu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pdmenu/newbie
	${INSTALL_PROGRAM} ${WRKSRC}/pdmenu ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/examples/pdmenurc ${PREFIX}/share/examples/pdmenu
	${INSTALL_MAN} ${WRKSRC}/doc/pdmenu.man ${PREFIX}/man/man1/pdmenu.1
	${INSTALL_MAN} ${WRKSRC}/doc/pdmenurc.man ${PREFIX}/man/man5/pdmenurc.5
.for i in README ba.lpd editdir.pl pdmenurc pdmenurc.complex pdmenurc.monitor showdir.pl newbie/modem-check newbie/pdmenurc.newbie newbie/rpm-info-on-command
	${INSTALL_SCRIPT} ${WRKSRC}/examples/$i ${PREFIX}/share/examples/pdmenu/$i
.endfor
.for lang in fr es ru
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/${lang}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/${lang}.mo \
		${PREFIX}/share/locale/${lang}/LC_MESSAGES/pdmenu.mo
.endfor

.include <bsd.port.mk>
