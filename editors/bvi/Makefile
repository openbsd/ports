# $OpenBSD: Makefile,v 1.8 2002/02/19 00:12:29 naddy Exp $

COMMENT=	"binary visual display editor, based on vi"

DISTNAME=	bvi-1.3.1
CATEGORIES=	editors
NEED_VERSION=	1.504
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= bvi
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
