# $OpenBSD: Makefile,v 1.32 2012/11/17 09:40:41 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		3.6.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=684965
post-install:
.for i in ca de el es fr gl
	cd ${PREFIX}/share/gnome/help/gnome-devel-demos/$i/samples/helloWorld  && find . \
		 -type l -exec ln -sf ../../../C/samples/helloWorld/{} {} \;
.endfor

.include <bsd.port.mk>
