# OpenBSD makefile for:	tkman
# Version required:     2.0.6
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 2000/03/19 16:43:41 espie Exp $
#

DISTNAME=	tkman-2.0.6
CATEGORIES=	misc tk80
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.cs.berkeley.edu/ucb/people/phelps/tcltk/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80.1.:x11/tk80
RUN_DEPENDS=	rman:textproc/rman \
		glimpse:textproc/glimpse

.if !defined(NOPORTDOCS)
post-install:
	@mkdir -p ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman
.endif

.include <bsd.port.mk>
