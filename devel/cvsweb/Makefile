# $OpenBSD: Makefile,v 1.48 2013/07/05 07:23:33 jasper Exp $

COMMENT=	CGI script to browse CVS repository trees

DISTNAME=	cvsweb-2.0.6
REVISION =	14
CATEGORIES=	devel www
HOMEPAGE=	http://www.freebsd.org/projects/cvsweb.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=scop/} \
		http://people.FreeBSD.org/~scop/cvsweb/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
CONFDIR=	${PREFIX}/conf

CONFFILES=	cvsweb.conf cvsweb.conf-freebsd cvsweb.conf-netbsd \
		cvsweb.conf-openbsd cvsweb.conf-ruby
ICONS=		back.gif dir.gif text.gif \
		miniback.gif minidir.gif minitext.gif

SUBST_VARS=	CONFDIR

do-configure:
	@perl -i -pe 's@%%CONFDIR%%@${CONFDIR}@g' ${WRKSRC}/cvsweb.cgi

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsweb.cgi ${PREFIX}/cgi-bin/cvsweb
	${INSTALL_DATA_DIR} ${CONFDIR}/cvsweb
.for file in ${CONFFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${CONFDIR}/cvsweb/${file}.dist
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/icons/cvsweb
.for file in ${ICONS}
	${INSTALL_DATA} ${WRKSRC}/icons/${file} ${PREFIX}/htdocs/icons/cvsweb/
.endfor

.include <bsd.port.mk>
