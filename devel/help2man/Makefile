# $OpenBSD: Makefile,v 1.2 2002/05/13 18:50:39 espie Exp $

COMMENT=	"GNU help2man"

DISTNAME=	help2man-1.24
CATEGORIES=	devel
NEED_VERSION=	1.435
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	http://www.gnu.org/software/help2man/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-extract:
	@rm -f ${WRKSRC}/help2man.info*

.include <bsd.port.mk>
