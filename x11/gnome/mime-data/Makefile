# $OpenBSD: Makefile,v 1.14 2007/01/18 21:48:54 jasper Exp $

COMMENT=		"MIME and Application database for GNOME"

DISTNAME=		gnome-mime-data-2.4.3
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-mime-data/2.4/}
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/gettext \
			:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-mime-data; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
