# $OpenBSD: Makefile,v 1.19 2014/08/20 21:15:23 kili Exp $

COMMENT=	HTTP caching proxy

DISTNAME=	polipo-1.1.1
CATEGORIES=	www

HOMEPAGE=	http://www.pps.univ-paris-diderot.fr/~jch/software/polipo/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	http://www.pps.univ-paris-diderot.fr/~jch/software/files/polipo/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c


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
