# $OpenBSD: Makefile,v 1.6 2010/12/14 14:54:35 ajacoutot Exp $

COMMENT=		lightweight C library that eases the writing of daemons

DISTNAME=		libdaemon-0.14
SHARED_LIBS+=		daemon	3.2	# .5.0
CATEGORIES=		devel

HOMEPAGE=		http://0pointer.de/lennart/projects/libdaemon/

# LGPLv2.1
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--disable-silent-rules \
			--disable-lynx

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
