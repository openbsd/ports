# $OpenBSD: Makefile,v 1.1.1.1 2014/09/26 14:00:34 gonzalo Exp $

COMMENT=	Security auditing tool for Unix based systems.

DISTNAME=	lynis-1.6.2

CATEGORIES=	security

HOMEPAGE=	http://cisofy.com

MAINTAINER=	Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://cisofy.com/files/

PKG_ARCH=	*

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/lynis

post-extract:
	@perl -pi -e 's,usr/share,usr/local/share,g' \
		${WRKDIST}/lynis
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lynis/
	@cp -r ${WRKDIST}/{dev,plugins,db,include} \
		${PREFIX}/share/lynis/
	cd ${WRKSRC}; ${INSTALL_DATA} CONTRIBUTORS LICENSE \
		FAQ CHANGELOG README default.prf \
		INSTALL ${PREFIX}/share/lynis/
	${INSTALL_MAN} ${WRKSRC}/lynis.8 ${PREFIX}/man/man8/
	${INSTALL_PROGRAM} ${WRKSRC}/lynis ${PREFIX}/bin/

.include <bsd.port.mk>
