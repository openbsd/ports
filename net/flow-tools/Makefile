# $OpenBSD: Makefile,v 1.1.1.1 2000/08/26 06:58:20 jakob Exp $

DISTNAME=	flow-tools-0.34
CATEGORIES=	net

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	ftp://ftp.net.ohio-state.edu/users/maf/cisco/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
ALL_TARGET=	clean i386-fbsd docs

BIN=	flow-capture flow-cat flow-dscan flow-expire \
	flow-export flow-fanout flow-filter flow-gen \
	flow-print flow-profile flow-receive flow-send \
	flow-stat \

MAN1=	flow-capture.1 flow-cat.1 flow-dscan.1 flow-expire.1 \
	flow-export.1 flow-fanout.1 flow-filter.1 flow-gen.1 \
	flow-print.1 flow-profile.1 flow-stat.1

do-install:
.for file in ${BIN}
	@ ${INSTALL_PROGRAM} ${WRKSRC}/${file} ${PREFIX}/bin
.endfor
.for file in ${MAN1}
	@ ${INSTALL_MAN} ${WRKSRC}/${file} ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
