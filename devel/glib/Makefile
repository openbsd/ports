# $OpenBSD: Makefile,v 1.1.1.1 1999/02/27 15:32:39 rohee Exp $
#

DISTNAME	=	glib-1.2.0
CATEGORIES	=	devel

NEED_VERSION=           1.64

MAINTAINER	=	rohee@OpenBSD.ORG

MASTER_SITES	=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
			ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
			http://www.ameth.org/gimp/gtk/v1.2/

GNU_CONFIGURE	=	yes

.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS	+=	--enable-shared
.else
CONFIGURE_ARGS	+=	--disable-shared
.endif
CONFIGURE_ARGS	+=	--enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
