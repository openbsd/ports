# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:01 espie Exp $

COMMENT=	RCS equivalent of CVS's annotate command

DISTNAME=	blame-1.1
CATEGORIES=	devel

HOMEPAGE=	http://blame.sourceforge.net/

MAINTAINER=	Alan Post <aisa@cybermesa.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blame/}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GROFF =	Yes

.include <bsd.port.mk>
