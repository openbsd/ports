# $OpenBSD: Makefile,v 1.7 2000/06/16 23:06:10 espie Exp $

DISTNAME=	snort-1.6
CATEGORIES=	net security
NEED_VERSION=	1.302
MASTER_SITES=	http://www.clark.net/~roesch/ \
		ftp://gd.tuwien.ac.at/infosys/security/snort/ \
		http://snort.whitehats.com/

HOMEPAGE=       http://www.clark.net/~roesch/security.html

MAINTAINER=	halogen@nol.net

LICENSE_TYPE=         	GPL
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/snort.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/snort
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/snort
	@echo "===>  Rule examples installed in ${PREFIX}/share/snort"

.include <bsd.port.mk>
