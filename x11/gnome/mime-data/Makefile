# $OpenBSD: Makefile,v 1.9 2004/02/22 05:33:53 marcm Exp $

COMMENT=		"MIME and Application database for GNOME"

DISTNAME=		gnome-mime-data-2.4.1
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-mime-data/2.4/}
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFDIR=		${SYSCONFDIR}/gnome
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
SUBST_VARS=		CONFDIR

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-mime-data; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
