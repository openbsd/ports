# $OpenBSD: Makefile,v 1.3 2009/09/28 17:58:57 ajacoutot Exp $

COMMENT=		minimal XML library

DISTNAME=		mxml-2.5
PKGNAME=		${DISTNAME}p0

SHARED_LIBS=		mxml	0.1	# 1.4

CATEGORIES=		textproc

HOMEPAGE=		http://www.easysw.com/~mike/mxml/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		ftp://ftp.easysw.com/pub/mxml/2.5/

# XXX lower optimization on powerpc:
# mxmldoc-static segfaults during build
.if ${MACHINE_ARCH} == "powerpc"
CFLAGS+=	-O1
.endif

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --disable-threads
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}

NO_REGRESS=		Yes

.include <bsd.port.mk>
