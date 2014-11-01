# $OpenBSD: Makefile,v 1.5 2014/11/01 19:34:46 benoit Exp $

COMMENT=	RCS equivalent of CVS's annotate command

DISTNAME=	blame-1.3.1
CATEGORIES=	devel

HOMEPAGE=	http://blame.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blame/}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
