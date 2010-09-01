# $OpenBSD: Makefile,v 1.5 2010/09/01 09:17:42 sthen Exp $

CATEGORIES=	databases x11 x11/kde
COMMENT=	MDB (access) file migration driver for kexi

VERSION=	1.6.1
MASTER_SITES=	${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}
DISTNAME=	keximdb-1.1.0
DIST_SUBDIR=	kde
REVISION=	2
HOMEPAGE=	http://www.kexi-project.org/wiki/wikiview/index.php?MDBDriver

SHARED_ONLY=	Yes

MODULES=		x11/kde
MODKDE_VERSION=		3.5.7
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} \
			--with-kexidb-libraries=${LOCALBASE}/lib
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS +=	::x11/kde/libs3 \
		::x11/kde/office3 \
		::databases/mdbtools/snapshot

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender jpeg m png rpcsvc
WANTLIB += stdc++ util z art_lgpl_2 fam glib-2.0 iconv idn intl
WANTLIB += pcre pthread-stubs xcb kdecore.>=7 DCOP kabc kdefx
WANTLIB += kdeprint kdesu kdeui kparts kutils kwalletclient kio
WANTLIB += kmdi knewstuff kresources ktexteditor vcard kofficecore.>=3
WANTLIB += kexicore kexidatatable kexidb kexidbparser kexiextendedwidgets
WANTLIB += kexiguiutils keximain keximigrate kexiutils kofficeui
WANTLIB += koproperty kowmf kstore kwmf mdb

.include <bsd.port.mk>
