# $OpenBSD: Makefile,v 1.72 2014/04/21 22:34:32 sthen Exp $

COMMENT-main =		K Desktop Environment, developer extensions
COMMENT-svn =		K Desktop Environment, svn extensions
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
REVISION =		20
DISTNAME =		kdesdk-${VERSION}

PKGNAME-main =		${DISTNAME}
PKGSPEC-main =		kdesdk->=3,<4
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
USE_GROFF =		Yes

RUN_DEPENDS-main +=	devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS =		x11/kde/libs3

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/kde/pim3

RUN_DEPENDS-svn =	x11/gtk+2,-guic
LIB_DEPENDS-svn =	${LIB_DEPENDS} \
			devel/subversion

SEPARATE_BUILD =	flavored

WANTLIB =
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt
WANTLIB += art_lgpl_2 c expat fam fontconfig freetype
WANTLIB += idn m png pthread pthread-stubs
WANTLIB += stdc++ util xcb z

WANTLIB-main = ${WANTLIB}
WANTLIB-main += ${KDE}/kabc ${KDE}/kdeprint ${KDE}/khtml ${KDE}/kjs
WANTLIB-main += ${KDE}/kparts ${KDE}/kresources ${KDE}/kspell
WANTLIB-main += ${KDE}/ktexteditor ${KDE}/ktnef ${KDE}/ktnef
WANTLIB-main += ${KDE}/kunittest ${KDE}/kutils lcms ${KDE}/kcal
WANTLIB-main += ${KDE}/kmime ${KDE}/vcard
WANTLIB-main += GL GLU X11-xcb Xau Xcursor Xdamage Xdmcp Xft Xi
WANTLIB-main += Xinerama Xmu Xrandr Xxf86vm drm glapi jpeg mng pcre
WANTLIB-main += pcreposix qui-mt xcb-dri2 xcb-glx xml2 xslt

WANTLIB-svn = ${WANTLIB}
WANTLIB-svn += apr-1 aprutil-1 db magic sasl2 serf-1 sqlite3 svn_client-1
WANTLIB-svn += svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1 svn_fs_fs-1
WANTLIB-svn += svn_fs_util-1 svn_ra-1 svn_ra_local-1 svn_ra_serf-1
WANTLIB-svn += svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1

post-patch:
	find "${WRKSRC}"/scripts -type f | while read F; do \
		case $$F in \
		*${PATCHORIG}|*.new) ;; \
		*) sed -E \
			-e 's@/usr/bin/env (bash|python)@${LOCALBASE}/bin/\1@g' \
			-e 's@/usr/bin/env perl@/usr/bin/perl@g' \
			-e 's@/usr/bin/svn@${LOCALBASE}/bin/svn@g' \
			<"$$F" >"$$F".new && \
			mv "$$F".new "$$F" \
			;; \
		esac \
	done

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>
