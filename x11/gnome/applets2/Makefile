# $OpenBSD: Makefile,v 1.3 2003/07/06 18:19:20 marcm Exp $

COMMENT=		"applets for use with the GNOME2 panel"
COMMENT-battstat=	"Gnome2 applet for monitoring battery level"

VERSION=		2.2.1
DISTNAME=		gnome-applets-${VERSION}
PKGNAME=		gnome-applets2-${VERSION}
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/2.2/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.11:textproc/scrollkeeper
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel \
			gailutil.17::x11/gnome/gail \
			gtop-2.0.0.0,gtop_common-2.0.0.0,gtop_sysdeps-2.0.0.0,gtop_suid_common-2.0.0.0,gtop_sysdeps_suid-2.0.0.0::devel/libgtop2

PSEUDO_FLAVORS=		no_battstat
# Only i386 and macppc have the headers for the battstat applet
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "powerpc"
FLAVOR?=		no_battstat
.else
FLAVOR?=
.endif

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_battstat}
MULTI_PACKAGES+=	-battstat
.endif
SUBPACKAGE?=

CONFDIR=		${SYSCONFDIR}/gnome
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-applets2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-battstat"
ONLY_FOR_ARCHS=		i386 powerpc
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel
. endif
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.if !${FLAVOR:L:Mno_battstat}
post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets2; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/gnome-applets2/
.endif

.include <bsd.port.mk>
