# $OpenBSD: Makefile,v 1.2 2002/05/15 18:05:18 espie Exp $

COMMENT=		"MIME and Application database for GNOME"

DISTNAME=		gnome-mime-data-1.0.1
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.504
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/gnome-mime-data/}
EXTRACT_SUFX=		.tar.bz2
CONFIGURE_STYLE= 	gnu

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-mime-data; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
