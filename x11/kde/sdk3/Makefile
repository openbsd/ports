# $OpenBSD: Makefile,v 1.50 2010/10/19 08:13:58 espie Exp $

COMMENT-main = 		K Desktop Environment, developer extensions
COMMENT-svn = 		K Desktop Environment, svn extensions
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdesdk-${VERSION}

PKGNAME-main =		${DISTNAME}
PKGNAME-svn =		kdesvn-${VERSION}

MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	cvsservice           1.0      # .0.1
SHARED_LIBS +=	kbabelcommon         6.0      # .5.0
SHARED_LIBS +=	kbabeldictplugin     4.0      # .3.0
SHARED_LIBS +=	kompareinterface     1.0      # .0.0
SHARED_LIBS +=	kspy                 4.0      # .3.0
SHARED_LIBS +=	kunittestgui         1.0      # .0.0
MULTI_PACKAGES =	-main -svn

MODULES =		x11/kde devel/gettext
USE_GROFF =	Yes

RUN_DEPENDS-main +=	:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =		::x11/kde/libs3

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			::x11/kde/pim3

LIB_DEPENDS-svn = 	${LIB_DEPENDS} \
			::devel/subversion

FLAVORS =		debug
SEPARATE_BUILD =	flavored

WANTLIB	= ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg \
	lib/kde3/DCOP lib/kde3/kdecore.>=6 lib/kde3/kdefx lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m png pthread \
	pthread-stubs rpcsvc stdc++ util xcb z
WANTLIB-main = ${WANTLIB}
WANTLIB-svn = ${WANTLIB}

REVISION-main = 5
REVISION-svn = 6
WANTLIB-main += Xfixes Xt expat fontconfig freetype kabc kdeprint \
	khtml kjs kparts kresources kspell ktexteditor ktnef ktnef kunittest \
	kutils lib/kde3/kcal lib/kde3/kmime pcre pcreposix qui-mt vcard xml2 \
	xslt
WANTLIB-svn += apr-1 aprutil-1 asn1 crypto db expat gssapi krb5 \
	neon sasl2 sqlite3 ssl svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 \
	svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_local-1 \
	svn_ra_neon-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	${post_install_libs}

.include <bsd.port.mk>
