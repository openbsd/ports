# $OpenBSD: Makefile,v 1.4 2002/08/22 16:43:15 brad Exp $

COMMENT=	"GNU help2man"

DISTNAME=	help2man-1.26
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	http://www.gnu.org/software/help2man/

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

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
