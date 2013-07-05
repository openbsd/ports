# $OpenBSD: Makefile,v 1.32 2013/07/05 07:38:47 jasper Exp $

COMMENT=	highly configurable webmail client

DISTNAME=	openwebmail-2.51
REVISION =	2
CATEGORIES=	mail www

HOMEPAGE=	http://www.openwebmail.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes

MASTER_SITES=	${HOMEPAGE}/openwebmail/download/release/ \
		http://turtle.ee.ncku.edu.tw/openwebmail/download/release/

RUN_DEPENDS=	textproc/ispell \
		mail/tnef \
		converters/p5-Text-Iconv>=1.2 \
		www/p5-CGI-SpeedyCGI>=2.21 \
		sysutils/p5-Quota>=1.4.6 \
		security/p5-Authen-SASL>=2.0.8 \
		security/p5-IO-Socket-SSL>=0.96

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

PREFIX=		${VARBASE}/www
CONFDIR=	${PREFIX}/conf
SUBST_VARS=	CONFDIR

SCRIPTFILES=	openwebmail-abook.pl openwebmail-advsearch.pl \
		openwebmail-cal.pl openwebmail-folder.pl \
		openwebmail-main.pl openwebmail-prefs.pl \
		openwebmail-read.pl openwebmail-saprefs.pl \
		openwebmail-send.pl openwebmail-spell.pl \
		openwebmail-tool.pl openwebmail-vdomain.pl \
		openwebmail-viewatt.pl openwebmail-webdisk.pl \
		openwebmail.pl

do-configure:
.for file in ${SCRIPTFILES}
	@perl -pi -e 's@%%SYSCONFDIR%%@${CONFDIR}@g' \
		${WRKSRC}/cgi-bin/openwebmail/${file}
.endfor
	@perl -pi -e 's@%%SYSCONFDIR%%@${CONFDIR}@g' \
		${WRKSRC}/cgi-bin/openwebmail/shares/ow-shared.pl
	@cd ${WRKSRC} && cp -Rp data htdocs
	@find ${WRKSRC}/cgi-bin -name '*.orig' |xargs rm
	@cd ${WRKSRC} && mkdir -p conf/openwebmail && \
		cp -Rp cgi-bin/openwebmail/etc/* conf/openwebmail
	@find ${WRKSRC}/cgi-bin -name 'etc' -type d |xargs rm -rf


do-install:
	${INSTALL_DATA_DIR} ${CONFDIR}/openwebmail
	${TAR} -C ${WRKSRC} -cf- cgi-bin conf htdocs | \
		${TAR} -C ${PREFIX} -xpf-
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

post-install:
	@echo "/var/www/cgi-bin/openwebmail/" \
		> ${CONFDIR}/openwebmail/openwebmail_path.conf

.include <bsd.port.mk>
