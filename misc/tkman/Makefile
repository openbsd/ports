# OpenBSD makefile for:	tkman
# Version required:     2.0.6
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 08:12:40 angelos Exp $
#

DISTNAME=	tkman-2.0.6
CATEGORIES=	misc tk80
MASTER_SITES=	ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80\\.1\\.:${PORTSDIR}/x11/tk80
RUN_DEPENDS=	rman:${PORTSDIR}/textproc/rman \
		glimpse:${PORTSDIR}/textproc/glimpse

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman
.endif

.include <bsd.port.mk>
