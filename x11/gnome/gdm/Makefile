# $OpenBSD: Makefile,v 1.5 2004/09/15 04:15:25 marcm Exp $


COMMENT=		"GNOME display manager"

DISTNAME=		gdm-2.6.0.4
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.jirka.org/gdm.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gdm/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			rsvg-2::x11/gnome/librsvg

CONFDIR=		${SYSCONFDIR}/X11
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--localstatedir=/var
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/gdm/

.include <bsd.port.mk>
