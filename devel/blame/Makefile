# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:04 sthen Exp $

COMMENT=	RCS equivalent of CVS's annotate command

DISTNAME=	blame-1.3.1
CATEGORIES=	devel

HOMEPAGE=	http://blame.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blame/}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CFLAGS +=	-fgnu89-inline

.include <bsd.port.mk>
