# $OpenBSD: Makefile.inc,v 1.12 2013/03/11 11:41:26 espie Exp $

V=		2.2.9
CATEGORIES=	security

HOMEPAGE=	http://www.nessus.org/

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${V}/src/

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--sharedstatedir=/var	\
		--disable-nessuspcap	\
		--enable-bpf-sharing	\
		--enable-shared

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${V}//:S/-GPL//}
