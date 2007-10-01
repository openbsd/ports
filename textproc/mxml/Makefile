# $OpenBSD: Makefile,v 1.1.1.1 2007/10/01 18:40:11 jakemsr Exp $

COMMENT=		minimal XML library

DISTNAME=		mxml-2.2.2

SHARED_LIBS=		mxml	0.0	# 1.0

CATEGORIES=		textproc

HOMEPAGE=		http://www.easysw.com/~mike/mxml/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		ftp://ftp.easysw.com/pub/mxml/2.2.2/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}

NO_REGRESS=		Yes

.include <bsd.port.mk>
