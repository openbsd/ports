# $OpenBSD: Makefile,v 1.18 2001/11/07 15:12:30 naddy Exp $
# $FreeBSD: ports/devel/cvsweb/Makefile,v 1.28 2000/09/23 20:48:45 knu Exp $

COMMENT=	"WWW CGI script to browse CVS repository trees"

DISTNAME=	cvsweb-1.112.1.82
CATEGORIES=	devel www
NEED_VERSION=	1.489
HOMEPAGE=	http://www.idaemons.org/~knu/cvsweb/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.iDaemons.org/distfiles/ \
		${MASTER_SITE_FREEBSD_LOCAL}
MASTER_SITE_SUBDIR=	knu

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/cvsweb

PREFIX=		/var/www
SYSCONFDIR=	${PREFIX}/conf

CONFFILES=	cvsweb.conf cvsweb.conf-freebsd cvsweb.conf-netbsd \
		cvsweb.conf-openbsd cvsweb.conf-ruby
ICONS=		back.gif dir.gif text.gif \
		miniback.gif minidir.gif minitext.gif

do-configure:
	@perl -i -pe 's@%%SYSCONFDIR%%@${SYSCONFDIR}@g' ${WRKSRC}/cvsweb.cgi

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsweb.cgi ${PREFIX}/cgi-bin/cvsweb
	${INSTALL_DATA_DIR} ${SYSCONFDIR}/cvsweb
.for file in ${CONFFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${SYSCONFDIR}/cvsweb/${file}.dist
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/icons/cvsweb
.for file in ${ICONS}
	${INSTALL_DATA} ${WRKSRC}/icons/${file} ${PREFIX}/icons/cvsweb/${file}
.endfor

.include <bsd.port.mk>
