# $OpenBSD: Makefile,v 1.7 2001/10/25 16:14:51 naddy Exp $

COMMENT=	"binary visual display editor, based on vi"

DISTNAME=	bvi-1.3.0
CATEGORIES=	editors
NEED_VERSION=	1.363
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	bvi
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE= gnu
CFLAGS+=	-DANSI

NO_REGRESS=	Yes

.include <bsd.port.mk>
