# OpenBSD makefile for:  tcplist
# Version required:     	  2.1
# Date created:			  06 Nov 1997
# Whom:				  ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:46 joey Exp $
#

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

MAINTAINER=     joey@openbsd.org

RUN_DEPENDS=	lsof:${PORTSDIR}/sysutils/lsof

EXTRACT_CMD=	cat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh
NO_WRKSUBDIR=	yes
INSTALL_TARGET=	install install.man
MAN1=		tcplist.1

.include <bsd.port.mk>
