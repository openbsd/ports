# $OpenBSD: Makefile,v 1.3 2004/12/17 15:18:33 alek Exp $

COMMENT='gui for ogle'
CATEGORIES=x11

DISTNAME=goggles-0.7.2
DISTFILES=Goggles-0.7.2.tar.gz
MASTER_SITES=http://www.fifthplanet.net/files/
HOMEPAGE=http://www.fifthplanet.net/goggles.html
MAINTAINER=Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ENV+=CPPFLAGS=-I${X11BASE}/include \
	LDFLAGS=-L${X11BASE}/lib
CONFIGURE_ARGS+= \
	--with-dvdcontrol=${LOCALBASE} \
	--with-fox=${LOCALBASE} \

LIB_DEPENDS=FOX-1.1.41.0::devel/fox \
	dvdcontrol,msgevents::x11/ogle
MAKE_FLAGS=INCLUDES=-I${X11BASE}/include

# GPL
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=GL GLU X11 Xext Xv bz2 c iconv jpeg m png pthread stdc++ tiff xml2 z

.include <bsd.port.mk>
