# $OpenBSD: Makefile,v 1.15 2000/08/20 19:18:56 brad Exp $

DISTNAME=	indent-2.2.5
CATEGORIES=	devel
NEED_VERSION=	1.310
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

post-extract:
	@rm ${WRKSRC}/indent.info*

.include <bsd.port.mk>
