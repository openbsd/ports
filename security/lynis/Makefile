# $OpenBSD: Makefile,v 1.36 2019/07/15 12:23:29 gonzalo Exp $

COMMENT=	security auditing tool

DISTNAME =	lynis-2.7.5

CATEGORIES=	security

HOMEPAGE=	https://cisofy.com

MAINTAINER=	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.cisofy.com/lynis/

PKG_ARCH=	*

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/lynis

post-extract:
	sed -i 's,usr/share,usr/local/share,g' ${WRKDIST}/lynis

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/lynis/
	@cp -r ${WRKDIST}/{plugins,db,include} \
		${PREFIX}/share/lynis/
.for f in LICENSE FAQ CHANGELOG.md README INSTALL
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/lynis/
.endfor
	${INSTALL_DATA} ${WRKSRC}/default.prf \
		${PREFIX}/share/examples/lynis/
	${INSTALL_MAN} ${WRKSRC}/lynis.8 ${PREFIX}/man/man8/
	${INSTALL_SCRIPT} ${WRKSRC}/lynis ${PREFIX}/bin/

.include <bsd.port.mk>
