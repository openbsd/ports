# $OpenBSD: Makefile,v 1.4 1999/04/08 22:41:21 brad Exp $

DISTNAME=		ORBit-0.4.0
CATEGORIES=		devel
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR=	ORBit

NEED_VERSION=		1.79

MAINTAINER=		rohee@OpenBSD.ORG

BUILD_DEPENDS=	libtool:${PORTSDIR}/devel/libtool \
		gindent:${PORTSDIR}/devel/gindent
LIB_DEPENDS+=	glib.1.2:${PORTSDIR}/devel/glib

USE_GMAKE=		yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	LIBTOOL=/usr/local/bin/libtool

post-install:
	@test -f ${PREFIX}/info/dir || \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/libIDL.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
