# $OpenBSD: Makefile,v 1.20 2020/03/22 18:13:36 naddy Exp $

COMMENT=		free real-time logfile analyzer

DISTNAME=		awstats-7.7
REVISION=		2

CATEGORIES=		www

HOMEPAGE=		http://awstats.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=awstats/}

RUN_DEPENDS=		www/p5-libwww

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/awstats

ACCESSLOG=		LogFile="${PREFIX}/logs/access.log"

pre-configure:
	sed -i -e "s,/usr/local/awstats,${INSTDIR},g;" \
		-e "s,/var/lib/awstats,${INSTDIR}/data,g;" \
		${WRKSRC}/docs/*.html \
		${WRKSRC}/tools/{httpd_conf,*.pl} \
		${WRKSRC}/wwwroot/cgi-bin/awstats.{pl,model.conf}
	sed -i -e 's,^LogFile="/var/log/httpd/mylog.log",${ACCESSLOG},g;' \
		-e 's,^SiteDomain="",SiteDomain="localhost",g;' \
		-e 's,^DirData=".",DirData="${INSTDIR}/data",g;' \
		-e 's,^DirCgi="/cgi-bin",DirCgi="/awstats/cgi-bin",g;' \
		-e 's,^DirIcons="/icon",DirIcons="/awstats/icon",g;' \
		${WRKSRC}/wwwroot/cgi-bin/awstats.model.conf
	rm ${WRKSRC}/tools/webmin/.gitignore

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/data
	cp -R ${WRKSRC}/* ${INSTDIR}/
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f \
		\( -name '*.pl' -exec chmod u=rwx,go=rx {} + -o \
		-exec chmod u=rw,go=r {} + \)

.include <bsd.port.mk>
