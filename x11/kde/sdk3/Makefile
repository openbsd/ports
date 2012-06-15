# $OpenBSD: Makefile,v 1.56 2012/06/15 08:30:23 ajacoutot Exp $

COMMENT-main = 		K Desktop Environment, developer extensions
COMMENT-svn = 		K Desktop Environment, svn extensions
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdesdk-${VERSION}

PKGNAME-main =		${DISTNAME}
REVISION-main =		9
PKGNAME-svn =		kdesvn-${VERSION}
REVISION-svn =		9

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

FLAVORS =		debug
SEPARATE_BUILD =	flavored

WANTLIB	= ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg \
	lib/kde3/DCOP lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m png pthread \
	pthread-stubs rpcsvc stdc++ util xcb z
WANTLIB-main = ${WANTLIB}
WANTLIB-svn = ${WANTLIB}

WANTLIB-main += Xfixes Xt expat fontconfig freetype kabc kdeprint \
	khtml kjs kparts kresources kspell ktexteditor ktnef ktnef kunittest \
	kutils lib/kde3/kcal lib/kde3/kmime pcre pcreposix qui-mt vcard xml2 \
	xslt
WANTLIB-svn += apr-1 aprutil-1 asn1 crypto db expat gssapi krb5 \
	neon sasl2 sqlite3 ssl svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 \
	svn_fs_base-1 svn_fs_fs-1 svn_fs_util-1 svn_ra-1 svn_ra_local-1 \
	svn_ra_neon-1 svn_ra_svn-1 svn_repos-1 svn_subr-1 svn_wc-1

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	${post_install_libs}

.include <bsd.port.mk>
