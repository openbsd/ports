# $OpenBSD: Makefile,v 1.39 2012/06/15 08:30:22 ajacoutot Exp $

COMMENT = 		K Desktop Environment, admin tools
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeadmin-${VERSION}
MODKDE_VERSION ?=	3.5.8

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3
FLAVORS =	debug

SEPARATE_BUILD =	flavored

REVISION =	7
WANTLIB = ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg kabc \
	kresources kwalletclient lib/kde3/DCOP lib/kde3/kdecore>=6 \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/kio lib/kde3/kntlm lib/kde3/kparts m png pthread \
	pthread-stubs stdc++ util vcard xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

.include <bsd.port.mk>
