# $OpenBSD: Makefile,v 1.52 2014/07/26 19:38:03 naddy Exp $

COMMENT=	CGI script to browse CVS repository trees

DISTNAME=	cvsweb-2.0.6
REVISION=	18
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

ICONS=		back.gif dir.gif text.gif \
		miniback.gif minidir.gif minitext.gif

SUBST_VARS=	CONFDIR

do-configure:
	@perl -i -pe 's@%%CONFDIR%%@${CONFDIR}@g' ${WRKSRC}/cvsweb.cgi

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsweb.cgi ${PREFIX}/cgi-bin/cvsweb
	${INSTALL_DATA_DIR} ${CONFDIR}/cvsweb
	${INSTALL_DATA} ${WRKSRC}/cvsweb.conf ${CONFDIR}/cvsweb/cvsweb.conf.dist
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/cvsweb/icons
.for file in ${ICONS}
	${INSTALL_DATA} ${WRKSRC}/icons/${file} ${PREFIX}/htdocs/cvsweb/icons/
.endfor

.include <bsd.port.mk>
