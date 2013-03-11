# $OpenBSD: Makefile,v 1.17 2013/03/11 11:44:48 espie Exp $

COMMENT=	HTTP caching proxy

DISTNAME=	polipo-1.0.4.1
CATEGORIES=	www
REVISION=	6

HOMEPAGE=	http://www.pps.jussieu.fr/~jch/software/polipo/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	http://freehaven.net/~chrisd/polipo/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

USE_GROFF=	Yes

post-extract:
	@perl -pi -e "s,/usr/local/share/polipo/,${LOCALBASE}/share/polipo/," \
		${WRKSRC}/polipo.man
	@perl -pi -e "s,/var/cache/polipo/,/var/polipo/cache," \
		${WRKSRC}/polipo.man
	@perl -pi -e "s,/usr/share/polipo/www/,${LOCALBASE}/share/polipo/," \
		${WRKSRC}/polipo.man
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" \
		${WRKSRC}/polipo.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polipo
	${INSTALL_DATA} ${WRKSRC}/*.sample ${PREFIX}/share/examples/polipo

NO_TEST=     Yes

.include <bsd.port.mk>
