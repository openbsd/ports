# $OpenBSD: Makefile,v 1.12 2004/11/24 11:08:02 espie Exp $

COMMENT=	"binary visual display editor, based on vi"

DISTNAME=	bvi-1.3.2
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

NO_REGRESS=	Yes

.include <bsd.port.mk>
