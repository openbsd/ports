# $OpenBSD: Makefile,v 1.16 2009/10/13 21:48:30 sthen Exp $

COMMENT=		simple slang-based menu program

DISTNAME=		pdmenu_1.2.98
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=     	misc

HOMEPAGE=		http://kitenet.net/programs/pdmenu/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses iconv m

MASTER_SITES=		http://ftp.de.debian.org/debian/pool/main/p/pdmenu/

LIB_DEPENDS=		slang.>=15::devel/libslang
MODULES=		devel/gettext

DESTDIRNAME=		INSTALL_PREFIX

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.61

CFLAGS+=		-I${LOCALBASE}/include -L${LOCALBASE}/lib
#CONFIGURE_ARGS=		--datadir=${PREFIX}/share/examples
CONFIGURE_ENV=		LIBS="-lm -lcurses -lintl -liconv" \
			SLANG_LIB_LOC=${DEPBASE}/lib \
			SLANG_H_LOC=${DEPBASE}/include/slang.h
WRKDIST=		${WRKDIR}/pdmenu

NO_REGRESS=		Yes

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
