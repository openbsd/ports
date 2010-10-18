# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:51 espie Exp $

COMMENT=	RCS equivalent of CVS's annotate command

DISTNAME=	blame-1.1
CATEGORIES=	devel

HOMEPAGE=	http://blame.sourceforge.net/

MAINTAINER=	Alan Post <aisa@cybermesa.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blame/}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GROFF =	Yes

.include <bsd.port.mk>
