# OpenBSD makefile for:	tkcron-2.12
# Version required:	2.12
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.12 2001/05/06 02:31:02 lebel Exp $
#

COMMENT=	"frontend to crontab"

DISTNAME=	tkcron-2.12
CATEGORIES=	misc 
NEED_VERSION=	1.402
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
