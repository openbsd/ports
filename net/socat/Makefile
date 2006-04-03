# $OpenBSD: Makefile,v 1.2 2006/04/03 06:56:47 steven Exp $

COMMENT=	"socat is a relay for bidirectional data transfer" 

DISTNAME=	socat-1.4.3.1
CATEGORIES=	net

HOMEPAGE=	http://www.dest-unreach.org/socat/

MAINTAINER=	Rui Reis <rui@rui.cx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	curses c readline crypto util ssl

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/socat-1.4

pre-build:
	perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/socat.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socat
.for file in FAQ README SECURITY xio.help socat.html
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/socat
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socat
.for file in EXAMPLES testcert.conf *.sh
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/socat
.endfor


.include <bsd.port.mk>
