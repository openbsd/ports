# $OpenBSD: Makefile,v 1.22 2019/07/12 21:15:35 sthen Exp $

COMMENT=	update your Snort rules

DISTNAME=	oinkmaster-2.0
REVISION=	2
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oinkmaster/}

HOMEPAGE=       http://oinkmaster.sourceforge.net/

MAINTAINER=	Markus Lude <markus.lude@gmx.de>

# License: BSD
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		net/wget

NO_BUILD=Yes
NO_TEST=Yes
PKG_ARCH=*

DOCS=	FAQ INSTALL LICENSE README README.templates UPGRADING

do-install:
	sed -e 's;"/usr/local/etc/oinkmaster.conf";"${SYSCONFDIR}/oinkmaster.conf";g' \
	    ${WRKSRC}/oinkmaster.pl > ${WRKSRC}/oinkmaster-
	${INSTALL_SCRIPT} ${WRKSRC}/oinkmaster- ${PREFIX}/bin/oinkmaster
	${INSTALL_MAN} ${WRKSRC}/oinkmaster.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oinkmaster
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oinkmaster
	${INSTALL_DATA}	${WRKSRC}/oinkmaster.conf \
			${WRKSRC}/template-examples.conf \
			${PREFIX}/share/examples/oinkmaster
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/oinkmaster
.endfor

.include <bsd.port.mk>
