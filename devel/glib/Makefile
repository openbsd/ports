# $OpenBSD: Makefile,v 1.2 1999/03/02 04:41:01 marc Exp $
#

DISTNAME	=	glib-1.2.0
CATEGORIES	=	devel

NEED_VERSION=           1.73

MAINTAINER	=	rohee@OpenBSD.ORG

MASTER_SITES	=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
			ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
			http://www.ameth.org/gimp/gtk/v1.2/

GNU_CONFIGURE	=	yes
CONFIGURE_ARGS	+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS	+=	--enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
