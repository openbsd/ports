# $OpenBSD: Makefile,v 1.6 2010/11/22 08:36:49 espie Exp $

COMMENT=	little and fast Web crawler

DISTNAME=	larbin-2.6.3
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	http://larbin.sourceforge.net/index-eng.html

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB += adns>=1 c m pthread stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=larbin/}

LIB_DEPENDS=		net/adns

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CC="${CC}" MAKE=${MAKE_PROGRAM}
MAKE_ENV=		CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},' ${WRKSRC}/src/global.cc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/larbin ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larbin
	${INSTALL_DATA} ${WRKSRC}/larbin.conf \
		${PREFIX}/share/examples/larbin/larbin.conf.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larbin
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/larbin

.include <bsd.port.mk>
