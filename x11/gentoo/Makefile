# $OpenBSD: Makefile,v 1.3 2002/07/06 23:53:43 pvalchev Exp $

COMMENT=		"GTK+ Graphical filemanager"

VERSION=		0.11.27
DISTNAME=		gentoo-${VERSION}
CATEGORIES=		x11	
NEED_VERSION=		1.531

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gentoo/}

HOMEPAGE=		http://www.obsession.se/gentoo/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

LIB_DEPENDS= 		gtk.1.2,gdk.1.2::x11/gtk+ \
			glib.1::devel/glib 

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

post-install:
	@cd ${WRKSRC} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gentoo && \
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/gentoo

.include <bsd.port.mk>
