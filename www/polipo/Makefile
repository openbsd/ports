# $OpenBSD: Makefile,v 1.7 2010/03/20 21:32:23 kili Exp $

COMMENT=	HTTP caching proxy

DISTNAME=	polipo-1.0.4.1
CATEGORIES=	www

HOMEPAGE=	http://www.pps.jussieu.fr/~jch/software/polipo/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	http://freehaven.net/~chrisd/polipo/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=        	c

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

NO_REGRESS=     Yes

.include <bsd.port.mk>
