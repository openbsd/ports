# $OpenBSD: Makefile,v 1.14 2000/03/19 16:05:42 espie Exp $

DISTNAME=	indent-2.2.2
CATEGORIES=	devel
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= indent

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=		Yes

post-extract:
	@rm ${WRKSRC}/indent.info*

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/indent ${PREFIX}/bin/gindent
	@${INSTALL_MAN} ${WRKSRC}/indent.1 ${PREFIX}/man/man1/gindent.1
	@${INSTALL_DATA} ${WRKSRC}/indent.info ${PREFIX}/info

.include <bsd.port.mk>
