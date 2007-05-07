# $OpenBSD: Makefile,v 1.1.1.1 2007/05/07 11:17:07 jasper Exp $

COMMENT=	"little and fast Web crawler"

DISTNAME=	larbin-2.6.3
CATEGORIES=	www

HOMEPAGE=	http://larbin.sourceforge.net/index-eng.html

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=	c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=larbin/}

RUN_DEPENDS=		::net/adns
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	simple
NO_REGRESS=		Yes

pre-patch:
	perl -pi -e 's,!!CC!!,${CC},g; s,!!CXX!!,${CXX},g' ${WRKSRC}/configure
	perl -pi -e 's,!!CXXFLAGS!!,${CFLAGS},' ${WRKSRC}/src/larbin.make
	perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},' ${WRKSRC}/src/global.cc
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/larbin ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larbin
	${INSTALL_DATA} ${WRKSRC}/larbin.conf \
		${PREFIX}/share/examples/larbin/larbin.conf.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larbin
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/larbin

.include <bsd.port.mk>
