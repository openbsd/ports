# $OpenBSD: Makefile,v 1.3 2006/07/17 19:57:26 espie Exp $

COMMENT=	"HTTP caching proxy"

DISTNAME=	polipo-0.9.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.pps.jussieu.fr/~jch/software/polipo/

MAINTAINER=	Jon Trembley <jon@brain-box.net>

MASTER_SITES=	http://www.pps.jussieu.fr/~jch/software/files/polipo/

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
