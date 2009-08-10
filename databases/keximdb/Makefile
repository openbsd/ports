# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:07 kili Exp $

CATEGORIES=	databases x11 x11/kde
COMMENT=	MDB (access) file migration driver for kexi

VERSION=	1.6.1
MASTER_SITES=	${MASTER_SITE_KDE:S@$@stable/koffice-${VERSION}/src/@}
DISTNAME=	keximdb-1.1.0
DIST_SUBDIR=	kde
PKGNAME=	${DISTNAME}p2
HOMEPAGE=	http://www.kexi-project.org/wiki/wikiview/index.php?MDBDriver

SHARED_ONLY=	Yes

MODULES=	x11/kde
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

LIB_DEPENDS +=	kdecore.>=7,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,kparts,kutils,kwalletclient,kio,kmdi,knewstuff,kresources,ktexteditor,vcard::x11/kde/libs3
LIB_DEPENDS +=  kofficecore.>=3,kexicore,kexidatatable,kexidb,kexidbparser,kexiextendedwidgets,kexiguiutils,keximain,keximigrate,kexiutils,kofficeui,koproperty,kowmf,kstore,kwmf::x11/kde/office3
LIB_DEPENDS += mdb::databases/mdbtools/snapshot

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender jpeg m png
WANTLIB += rpcsvc stdc++ util z
WANTLIB += art_lgpl_2 fam glib-2.0 iconv idn intl pcre
WANTLIB += pthread-stubs xcb



.include <bsd.port.mk>
