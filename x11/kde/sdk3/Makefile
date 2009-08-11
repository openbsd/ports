# $OpenBSD: Makefile,v 1.44 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT-main = 		K Desktop Environment, developer extensions
COMMENT-svn = 		K Desktop Environment, svn extensions
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdesdk-${VERSION}

PKGNAME-main =		${DISTNAME}p1
PKGNAME-svn =		kdesvn-${VERSION}p3

MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	cvsservice           1.0      # .0.1
SHARED_LIBS +=	kbabelcommon         6.0      # .5.0
SHARED_LIBS +=	kbabeldictplugin     4.0      # .3.0
SHARED_LIBS +=	kompareinterface     1.0      # .0.0
SHARED_LIBS +=	kspy                 4.0      # .3.0
SHARED_LIBS +=	kunittestgui         1.0      # .0.0
MULTI_PACKAGES =	-main -svn

RUN_DEPENDS-main +=	:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =		kdecore.>=6,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			kcal,kmime::x11/kde/pim3

LIB_DEPENDS-svn = 	${LIB_DEPENDS} \
			svn_client-1,svn_diff-1,svn_delta-1,svn_fs-1,svn_fs_base-1,svn_fs_fs-1,svn_fs_util-1,svn_ra-1,svn_ra_local-1,svn_ra_neon-1,svn_ra_svn-1,svn_repos-1,svn_subr-1,svn_wc-1::devel/subversion

FLAVORS =		debug
SEPARATE_BUILD =	flavored

WANTLIB	=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg m \
		png pthread stdc++ util z iconv idn \
		Xau Xdmcp fam rpcsvc intl pthread-stubs xcb

WANTLIB-main =	${WANTLIB} \
		kabc kdeprint khtml kutils vcard kresources kparts kspell kjs \
		ktexteditor ktnef kunittest ktnef \
		pcre pcreposix qui-mt xml2 xslt


WANTLIB-svn =	${WANTLIB} \
		apr-1 aprutil-1 crypto db expat neon sasl2 ssl \
		asn1 gssapi krb5 sqlite3

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>
