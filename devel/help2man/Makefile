# $OpenBSD: Makefile,v 1.8 2010/10/18 17:47:53 espie Exp $

COMMENT=	GNU help2man

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
USE_GROFF =	Yes

post-extract:
	@rm -f ${WRKSRC}/help2man.info*

.include <bsd.port.mk>
