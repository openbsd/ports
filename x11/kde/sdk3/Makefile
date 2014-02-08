# $OpenBSD: Makefile,v 1.71 2014/02/08 14:58:21 espie Exp $

COMMENT-main = 		K Desktop Environment, developer extensions
COMMENT-svn = 		K Desktop Environment, svn extensions
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdesdk-${VERSION}

PKGNAME-main =		${DISTNAME}
PKGSPEC-main =		kdesdk->=3,<4
REVISION-main =		19
PKGNAME-svn =		kdesvn-${VERSION}
REVISION-svn =		19

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
LIB_DEPENDS-svn = 	${LIB_DEPENDS} \
			devel/subversion

SEPARATE_BUILD =	flavored

WANTLIB =  c m png pthread pthread-stubs stdc++ util z
WANTLIB += ICE SM X11 Xext Xrender xcb
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB += art_lgpl_2 fam idn

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += GL GLU Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr Xt
WANTLIB-main += Xxf86vm drm expat fontconfig freetype
WANTLIB-main += ${KDE}/kabc ${KDE}/kdeprint ${KDE}/khtml ${KDE}/kjs
WANTLIB-main += ${KDE}/kparts ${KDE}/kresources ${KDE}/kspell
WANTLIB-main += ${KDE}/ktexteditor ${KDE}/ktnef ${KDE}/ktnef
WANTLIB-main += ${KDE}/kunittest ${KDE}/kutils lcms ${KDE}/kcal
WANTLIB-main += ${KDE}/kmime ${KDE}/vcard
WANTLIB-main += jpeg mng pcre pcreposix qui-mt xml2 xslt

WANTLIB-svn =  ${WANTLIB}
WANTLIB-svn += crypto expat sqlite3 
WANTLIB-svn += asn1 com_err heimbase roken wind gssapi krb5
WANTLIB-svn += Xfixes Xt fontconfig freetype
WANTLIB-svn += apr-1 aprutil-1 db magic sasl2 serf-1
WANTLIB-svn += svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1
WANTLIB-svn += svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_local-1
WANTLIB-svn += svn_ra_serf-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1

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
