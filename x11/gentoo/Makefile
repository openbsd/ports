# $OpenBSD: Makefile,v 1.8 2006/09/18 09:40:31 espie Exp $

COMMENT=		"GTK+ Graphical filemanager"

VERSION=		0.11.34
DISTNAME=		gentoo-${VERSION}
CATEGORIES=		x11	

HOMEPAGE=		http://www.obsession.se/gentoo/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gentoo/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c gmodule iconv intl m

LIB_DEPENDS= 		gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			glib.>=1::devel/glib 

CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/gentoo.1x ${PREFIX}/man/man1/gentoo.1
.for i in gentoorc gentoogtkrc
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/gentoo
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gentoo
	@cd ${WRKSRC}/docs && \
		tar cf - . | (cd ${PREFIX}/share/doc/gentoo; tar xf -) && \
		rm -f ${PREFIX}/share/doc/gentoo/gentoo.1x

.include <bsd.port.mk>
