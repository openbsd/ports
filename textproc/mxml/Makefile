# $OpenBSD: Makefile,v 1.7 2012/12/09 07:29:57 brad Exp $

COMMENT=		minimal XML library

DISTNAME=		mxml-2.5
REVISION=		2
CATEGORIES=		textproc

SHARED_LIBS=		mxml	0.1	# 1.4

HOMEPAGE=		http://www.easysw.com/~mike/mxml/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		ftp://ftp.easysw.com/pub/mxml/2.5/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-threads
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
USE_GROFF =		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
