COMMENT=	JVM-based scripting language for web apps (open-source CFML)

DISTNAME?=	lucee-${V}
PKGNAME?=	lucee-${V:S/-RC/rc/}
EXTRACT_SUFX?=	.war

CATEGORIES=	lang www

HOMEPAGE=	https://lucee.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		https://cdn.lucee.org/

BUILD_DEPENDS+=	archivers/unzip
SUBST_VARS+=	CATALINA_BASE

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
