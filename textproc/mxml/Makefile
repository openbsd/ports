# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:42 espie Exp $

COMMENT=		minimal XML library

DISTNAME=		mxml-2.5
REVISION=		2
CATEGORIES=		textproc

SHARED_LIBS=		mxml	0.1	# 1.4

HOMEPAGE=		http://www.easysw.com/~mike/mxml/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		ftp://ftp.easysw.com/pub/mxml/2.5/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-threads
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
USE_GROFF =		Yes

NO_TEST=		Yes

.include <bsd.port.mk>
