# $OpenBSD: Makefile,v 1.12 2006/02/05 12:48:43 david Exp $

COMMENT=	"update your Snort rules"

DISTNAME=	oinkmaster-1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oinkmaster/}

MAINTAINER=	David Krause <david@openbsd.org>
HOMEPAGE=       http://oinkmaster.sourceforge.net/

# License: BSD
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

RUN_DEPENDS=		::net/wget

NO_BUILD=Yes
NO_REGRESS=Yes
PKG_ARCH=*

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
	${INSTALL_DATA} ${WRKSRC}/README.templates ${PREFIX}/share/doc/oinkmaster

.include <bsd.port.mk>
