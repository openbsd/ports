# $OpenBSD: Makefile,v 1.12 2003/04/14 08:26:11 kevlo Exp $

COMMENT=	"highly configurable webmail client"

DISTNAME=	openwebmail-2.00
CATEGORIES=	mail

HOMEPAGE=	http://www.openwebmail.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://turtle.ee.ncku.edu.tw/openwebmail/download/ \
		ftp://openwebmail.org/pub/ \
		http://turtle.ee.ncku.edu.tw/openwebmail/download/old/
EXTRACT_SUFX=	.tgz
EXTRACT_CASES=  *.tgz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xpf -;;

RUN_DEPENDS=	::textproc/ispell \
		:p5-Text-Iconv->=1.2:converters/p5-Text-Iconv \
		:p5-CGI-SpeedyCGI->=2.21:www/p5-CGI-SpeedyCGI

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}

PREFIX=		/var/www
SYSCONFDIR=	${PREFIX}/conf

SCRIPTFILES=	openwebmail-abook.pl openwebmail-advsearch.pl \
		openwebmail-cal.pl openwebmail-folder.pl \
		openwebmail-main.pl openwebmail-prefs.pl \
		openwebmail-read.pl openwebmail-send.pl \
		openwebmail-spell.pl openwebmail-tool.pl \
		openwebmail-vdomain.pl openwebmail-viewatt.pl \
		openwebmail-webdisk.pl openwebmail.pl ow-shared.pl 

do-configure:
.for file in ${SCRIPTFILES}
	@perl -pi -e 's@%%SYSCONFDIR%%@${SYSCONFDIR}@g' \
		${WRKSRC}/cgi-bin/openwebmail/${file}
.endfor
	@cd ${WRKSRC} && cp -Rp data htdocs
	@find ${WRKSRC}/cgi-bin -name '*.orig' |xargs rm
	@cd ${WRKSRC} && mkdir -p conf/openwebmail && \
		cp -Rp cgi-bin/openwebmail/etc/* conf/openwebmail
	@find ${WRKSRC}/cgi-bin -name 'etc' -type d |xargs rm -rf


do-install:
	${INSTALL_DATA_DIR} ${SYSCONFDIR}/openwebmail
	${TAR} -C ${WRKSRC} -cpf- cgi-bin conf htdocs | \
		${TAR} -C ${PREFIX} -xpf-

.include <bsd.port.mk>
