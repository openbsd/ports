# $OpenBSD: Makefile,v 1.1.1.1 1999/03/23 19:24:31 rohee Exp $

DISTNAME		=	ORBit-0.4.0
CATEGORIES		=	devel gnome corba

NEED_VERSION		=	1.78

MAINTAINER		=	rohee@OpenBSD.ORG

MASTER_SITES		=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR	=	ORBit

BUILD_DEPENDS		=	libtool:${PORTSDIR}/devel/libtool
LIB_DEPENDS		+=	glib\.1\.2:${PORTSDIR}/devel/glib
RUN_DEPENDS		+=	gindent:${PORTSDIR}/devel/gindent

USE_GMAKE		=	yes

GNU_CONFIGURE		=	yes
CONFIGURE_ARGS		+=	${CONFIGURE_SHARED} # does not honour it
CONFIGURE_ARGS		+=	--sysconfdir=/etc
CONFIGURE_ARGS		+=	--disable-indent

CONFIGURE_ENV		+=	LIBTOOL=/usr/local/bin/libtool

post-install:
	test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	install-info ${PREFIX}/info/libIDL.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
