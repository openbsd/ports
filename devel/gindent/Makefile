# $OpenBSD: Makefile,v 1.17 2001/01/13 12:47:26 avsm Exp $

DISTNAME=	indent-2.2.6
CATEGORIES=	devel
NEED_VERSION=	1.348
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= indent

HOMEPAGE=	http://www.gnu.org/software/indent/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g"
SEPARATE_BUILD= concurrent

post-extract:
	@rm ${WRKSRC}/indent.info*

.include <bsd.port.mk>
