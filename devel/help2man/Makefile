# $OpenBSD: Makefile,v 1.6 2007/03/15 11:30:07 jolan Exp $

COMMENT=	"GNU help2man"

DISTNAME=	help2man-1.29
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	http://www.gnu.org/software/help2man/

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
