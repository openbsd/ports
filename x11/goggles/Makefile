# $OpenBSD: Makefile,v 1.1.1.1 2003/11/13 18:53:43 espie Exp $

COMMENT='gui for ogle'
CATEGORIES=x11

DISTNAME=goggles-0.7.0
DISTFILES=Goggles-0.7.0.tar.gz
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
.include <bsd.port.mk>
