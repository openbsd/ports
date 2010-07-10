# $OpenBSD: Makefile,v 1.35 2010/07/10 12:44:30 espie Exp $

COMMENT = 		K Desktop Environment, admin tools
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeadmin-${VERSION}
MODKDE_VERSION ?=	3.5.8

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	::x11/kde/libs3
FLAVORS =	debug

SEPARATE_BUILD =	flavored

REVISION =	4
WANTLIB = ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg kabc \
	kresources kwalletclient lib/kde3/DCOP lib/kde3/kdecore.>=6 \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/kio lib/kde3/kntlm lib/kde3/kparts m png pthread \
	pthread-stubs stdc++ util vcard xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

.include <bsd.port.mk>
