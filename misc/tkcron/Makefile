# OpenBSD makefile for:	tkcron-2.12
# Version required:	2.12
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.11 2000/12/14 13:23:00 espie Exp $
#

DISTNAME=	tkcron-2.12
CATEGORIES=	misc 
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.neosoft.com/languages/tcl/alcatel/code/
EXTRACT_SUFX=	.tcl.gz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wish8.3::x11/tk/8.3

EXTRACT_CASES=*) gunzip -c ${FULLDISTDIR}/$$archive >tkcron.tcl;;
WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/Makefile ${WRKSRC}

.include <bsd.port.mk>
