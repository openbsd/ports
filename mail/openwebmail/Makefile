# $OpenBSD: Makefile,v 1.2 2002/02/05 14:16:41 kevlo Exp $

COMMENT=	"highly configurable webmail client"

DISTNAME=	openwebmail-1.60
CATEGORIES=	mail
NEED_VERSION=	1.504

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

RUN_DEPENDS=	::net/p5-libnet \
		::www/p5-CGI \
		::converters/p5-MIME-Base64 \
		::textproc/ispell \
		::chinese/hc

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}

PREFIX=		/var/www
SYSCONFDIR=	${PREFIX}/conf

SCRIPTFILES=	checkmail.pl openwebmail-main.pl openwebmail-prefs.pl \
		openwebmail-read.pl openwebmail-send.pl openwebmail-viewatt.pl \
		openwebmail.pl spellcheck.pl
CONFFILE=	openwebmail.conf

do-configure:
.for file in ${SCRIPTFILES}
	@perl -pi -e 's@%%PREFIX%%@${PREFIX}@g; \
		s@%%SYSCONFDIR%%@${SYSCONFDIR}@g' \
		${WRKSRC}/cgi-bin/openwebmail/${file}
.endfor
	@cd ${WRKSRC} && cp -Rp data htdocs
	@find ${WRKSRC}/cgi-bin -name '*.orig' |xargs rm
	@cd ${WRKSRC} && ${INSTALL_DATA_DIR} conf/openwebmail && \
		cp -Rp cgi-bin/openwebmail/etc/* conf/openwebmail
	@find ${WRKSRC}/cgi-bin -name 'etc' -type d |xargs rm -rf


do-install:
	${INSTALL_DATA_DIR} ${SYSCONFDIR}/openwebmail
	${INSTALL_DATA} ${WRKSRC}/conf/openwebmail/${CONFFILE} \
		${SYSCONFDIR}/openwebmail/${CONFFILE}.dist
	${TAR} -C ${WRKSRC} -cpf- cgi-bin conf htdocs | \
		${TAR} -C ${PREFIX} -xpf-

.include <bsd.port.mk>
