# $OpenBSD: Makefile,v 1.2 2012/11/19 07:35:04 jasper Exp $

COMMENT=		free real-time logfile analyzer

DISTNAME=		awstats-7.0
REVISION=		0

CATEGORIES=		www

HOMEPAGE=	 	http://awstats.sourceforge.net/

MAINTAINER=		Robert Peichaer <rpe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=awstats/}

RUN_DEPENDS=		net/p5-Geo-IP \
			www/p5-libwww

NO_BUILD=		Yes

PREFIX=			/var/www

pre-configure:
	@perl -pi \
		-e "s,/usr/local/awstats,/var/www/awstats,g;" \
		${WRKSRC}/tools/*.pl \
		${WRKSRC}/tools/httpd_conf \
		${WRKSRC}/wwwroot/cgi-bin/awstats.pl
	@perl -pi \
		-e "s,/var/lib/awstats,/var/www/awstats/data,g;" \
		${WRKSRC}/wwwroot/cgi-bin/awstats.model.conf \
		${WRKSRC}/tools/*.pl
	@perl -pi \
		-e 's,^LogFile="/var/log/httpd/mylog.log",LogFile="/var/www/logs/access_log",g;' \
		-e 's,^SiteDomain="",SiteDomain="localhost",g;' \
		-e 's,^DirData=".",DirData="/var/www/awstats/data",g;' \
		-e 's,^DirCgi="/cgi-bin",DirCgi="/awstats",g;' \
		-e 's,^DirIcons="/icon",DirIcons="/awstatsicons",g;' \
		-e 's,^#LoadPlugin="geoip GEOIP_STANDARD /pathto/GeoIP.dat",LoadPlugin="geoip GEOIP_STANDARD /usr/local/share/examples/GeoIP/GeoIP.dat",g;' \
		${WRKSRC}/wwwroot/cgi-bin/awstats.model.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/awstats/data
	cp -R ${WRKSRC}/* ${PREFIX}/awstats
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/awstats
	find ${PREFIX}/awstats ! -name '*.pl' -type f -exec chmod u=rw,go=r {} +

.include <bsd.port.mk>
