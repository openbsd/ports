# $OpenBSD: Makefile,v 1.7 2002/06/28 01:11:45 kevlo Exp $

COMMENT=	"highly configurable webmail client"

DISTNAME=	openwebmail-1.65
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
		::databases/p5-ldap \
		::textproc/ispell

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}

PREFIX=		/var/www
SYSCONFDIR=	${PREFIX}/conf

SCRIPTFILES=	checkmail.pl openwebmail-prefs.pl openwebmail.pl\
		openwebmail-shared.pl 

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
