# $OpenBSD: Makefile,v 1.18 2020/05/18 23:02:34 sthen Exp $

COMMENT=	JVM-based scripting language for web apps (open-source CFML)

V=		5.3.6.61
DISTNAME=	lucee-$V
PKGNAME=	${DISTNAME:S/-RC/rc0/}
EXTRACT_SUFX=	.war
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{$V}
# snaps: ${DISTNAME}${EXTRACT_SUFX}{$V-SNAPSHOT}

CATEGORIES=	lang www

HOMEPAGE=	https://lucee.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://release.lucee.org/rest/update/provider/war/

# doesn't actually need tomcat to build, but listing it here avoids
# wasting time on arch where it's unavailable
BUILD_DEPENDS=	archivers/unzip \
		${RUN_DEPENDS}
RUN_DEPENDS=	www/tomcat/v9
SUBST_VARS=	CATALINA_BASE

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

CATALINA_BASE=	/var/tomcat
PREFIX=		${CATALINA_BASE}

do-extract:
	mkdir ${WRKSRC}; cd ${WRKSRC}; unzip ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

# Avoid conflicting servlet names with any alternative version of Railo/Lucee
# that's installed via .WAR files. Idea from jamiekrug.com. In pre-patch to
# assist with patch/edit/update-patches cycle. Also strips horizontal
# whitespace at eol.
pre-patch:
	perl -pi -e 's,<servlet-name>,<servlet-name>PKG_,g;' \
	    -e 's,\h*\r*$$,,;' ${WRKSRC}/WEB-INF/web.xml
	echo >> ${WRKSRC}/WEB-INF/web.xml

post-patch:
	perl -pi -e 's,/var/tomcat/,${CATALINA_BASE}/,g' ${WRKSRC}/WEB-INF/web.xml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/{lucee,lib,conf,webapps/lucee-default}
	cd ${WRKSRC} && pax -rw * ${PREFIX}/webapps/lucee-default
	mv ${PREFIX}/webapps/lucee-default/WEB-INF/lib/* ${PREFIX}/lib/
	rm -r ${PREFIX}/webapps/lucee-default/WEB-INF
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*
	${INSTALL_DATA} ${WRKSRC}/WEB-INF/web.xml ${PREFIX}/conf/web-lucee.xml.dist

.include <bsd.port.mk>
