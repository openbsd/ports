# $OpenBSD: Makefile,v 1.17 2007/09/15 23:54:17 merdely Exp $

COMMENT=	frontend to crontab

DISTNAME=	tkcron-2.12
CATEGORIES=	misc 

MASTER_SITES=	ftp://ftp.neosoft.com/languages/tcl/alcatel/code/
EXTRACT_SUFX=	.tcl.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::x11/tk/8.4

EXTRACT_CASES=*) gunzip -c ${FULLDISTDIR}/$$archive >tkcron.tcl;;
WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/Makefile ${WRKSRC}

NO_REGRESS=	Yes

.include <bsd.port.mk>
