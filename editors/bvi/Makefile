# $OpenBSD: Makefile,v 1.16 2010/10/23 18:26:20 sthen Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.3.2
REVISION=	0
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--libdir=${PREFIX}/share
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
