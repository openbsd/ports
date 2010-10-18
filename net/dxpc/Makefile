# $OpenBSD: Makefile,v 1.26 2010/10/18 18:36:47 espie Exp $

COMMENT=	X11 over a low bandwidth link
VERSION=	3.8.2
DISTNAME=	dxpc-${VERSION}
REVISION=	0
CATEGORIES=	net x11

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

FAKE=lib
MASTER_SITES=	http://www.vigor.nu/dxpc/${VERSION}/
HOMEPAGE=	http://www.vigor.nu/dxpc/

LIB_DEPENDS=	lzo::archivers/lzo

USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=--with-lzo-lib=${DEPBASE}

MAKE_FLAGS+=LDFLAGS=-L${DEPBASE}/lib

NO_REGRESS=	Yes

.include <bsd.port.mk>
