# $OpenBSD: Makefile,v 1.1.1.1 2000/12/14 15:47:11 avsm Exp $

DISTNAME=		vmailmgr-0.96.9
CATEGORIES=     	mail
NEED_VERSION=		1.340

HOMEPAGE=		http://www.vmailmgr.org/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.vmailmgr.org/archive/0.96.9/
RUN_DEPENDS=    	unixserver::net/ucspi-unix \
			multilog::sysutils/daemontools
CONFIGURE_STYLE=	gnu

TXTHELP=		FAQ configuration record-format HOWTO \
			protocol vmailmgr-cgi

HTMLHELP=		ChangeLog FAQ HOWTO NEWS configuration \
			vmailmgr-cgi vmailmgr

MISCHELP=		translation.fig translation.ps vmailmgr.pod

SCRIPTS=		autoresponder.sh vmailmgrd-log.run \
			vmailmgrd.init vmailmgrd.run

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmailmgr
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmailmgr/txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmailmgr/html
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmailmgr/misc

	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/vmailmgr
.for f in ${TXTHELP}
	${INSTALL_DATA} ${WRKSRC}/doc/${f}.txt \
			${PREFIX}/share/doc/vmailmgr/txt
.endfor
.for f in ${HTMLHELP}
	${INSTALL_DATA} ${WRKSRC}/doc/${f}.html \
			${PREFIX}/share/doc/vmailmgr/html
.endfor
.for f in ${MISCHELP}
	${INSTALL_DATA} ${WRKSRC}/doc/${f} \
			${PREFIX}/share/doc/vmailmgr/misc
.endfor
.for f in ${SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/scripts/${f} \
			${PREFIX}/share/examples/vmailmgr
.endfor

.include <bsd.port.mk>
