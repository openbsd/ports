# $OpenBSD: Makefile,v 1.63 2019/11/10 08:23:35 schwarze Exp $

COMMENT=	CGI script to browse CVS repository trees

DISTNAME=	cvsweb-2.1
CATEGORIES=	devel www
HOMEPAGE=	https://mandoc.bsd.lv/cvsweb/
MAINTAINER=	Ingo Schwarze <schwarze@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://mandoc.bsd.lv/cvsweb/release/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www

ICONS=		back.gif dir.gif text.gif \
		miniback.gif minidir.gif minitext.gif

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin
	${INSTALL_SCRIPT} ${WRKSRC}/cvsweb.cgi ${PREFIX}/cgi-bin/cvsweb
	${INSTALL_DATA_DIR} ${PREFIX}/conf/cvsweb
	${INSTALL_DATA} ${WRKSRC}/cvsweb.conf \
		${PREFIX}/conf/cvsweb/cvsweb.conf.dist
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/cvsweb/icons
.for file in ${ICONS}
	${INSTALL_DATA} ${WRKSRC}/icons/${file} ${PREFIX}/htdocs/cvsweb/icons/
.endfor

.include <bsd.port.mk>
