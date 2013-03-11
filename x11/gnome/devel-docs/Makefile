# $OpenBSD: Makefile,v 1.33 2013/03/11 11:46:10 espie Exp $

PKG_ARCH=		*

COMMENT=		developer documentation for GNOME

GNOME_PROJECT=		gnome-devel-docs
GNOME_VERSION=		3.6.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS= 	yelp

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=684965
post-install:
.for i in ca de el es fr gl
	cd ${PREFIX}/share/gnome/help/gnome-devel-demos/$i/samples/helloWorld  && find . \
		 -type l -exec ln -sf ../../../C/samples/helloWorld/{} {} \;
.endfor

.include <bsd.port.mk>
