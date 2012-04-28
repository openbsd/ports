# $OpenBSD: Makefile.inc,v 1.11 2012/04/28 10:52:08 ajacoutot Exp $

V=		2.2.9
CATEGORIES=	security

HOMEPAGE=	http://www.nessus.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${V}/src/

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--sharedstatedir=/var	\
		--disable-nessuspcap	\
		--enable-bpf-sharing	\
		--enable-shared

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${V}//:S/-GPL//}
