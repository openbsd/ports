# $OpenBSD: Makefile,v 1.6 2017/05/04 16:13:43 espie Exp $

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
CFLAGS +=	-fgnu89-inline

.include <bsd.port.mk>
