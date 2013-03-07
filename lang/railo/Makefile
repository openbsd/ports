# $OpenBSD: Makefile,v 1.7 2013/03/07 10:18:01 sthen Exp $

COMMENT=		open-source CFML engine

V=			4.0.3.006
DISTNAME=		railo-$V
EXTRACT_SUFX=		.war

CATEGORIES=		lang www

HOMEPAGE=		http://www.getrailo.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =		http://www.getrailo.org/down.cfm?item=/railo/remote/download/$V/custom/all/

BUILD_DEPENDS=		archivers/unzip
RUN_DEPENDS=		tomcat->=7,<8:www/tomcat/v7
SUBST_VARS=		CATALINA_BASE

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

CATALINA_BASE=		/var/tomcat
PREFIX=			${CATALINA_BASE}

do-extract:
	mkdir ${WRKSRC}; cd ${WRKSRC}; unzip ${FULLDISTDIR}/${DISTFILES}

# Avoid conflicting servlet names with any alternative version of Railo that's
# installed via .WAR files. Idea from jamiekrug.com. In pre-patch to assist with
# patch/edit/update-patches cycle. Also strips horizontal whitespace at eol.
pre-patch:
	perl -pi -e 's,<servlet-name>,<servlet-name>PKG_,g;' \
	    -e 's,\h*\r*$$,,;' ${WRKSRC}/WEB-INF/web.xml

post-patch:
	perl -pi -e 's,/var/tomcat/,${CATALINA_BASE}/,g' ${WRKSRC}/WEB-INF/web.xml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/railo ${PREFIX}/lib ${PREFIX}/conf
	cd ${WRKSRC}/WEB-INF/lib && pax -rw * ${PREFIX}/lib/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/*
	${INSTALL_DATA} ${WRKSRC}/index.cfm ${PREFIX}/railo/index.cfm.dist
	${INSTALL_DATA} ${WRKSRC}/WEB-INF/web.xml ${PREFIX}/conf/web-railo.xml.dist

.include <bsd.port.mk>
