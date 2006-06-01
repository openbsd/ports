# $OpenBSD: Makefile.inc,v 1.6 2006/06/01 05:16:32 aanriot Exp $

V=		2.2.7
CATEGORIES=	security

HOMEPAGE=	http://www.nessus.org/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	ftp://ftp.nessus.org/pub/nessus/nessus-${V}/src/ \
		ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${V}/src/ \
		ftp://sunsite.cnlab-switch.ch/mirror/nessus/nessus-${V}/src/ \
		ftp://ftp.at.nessus.org/pub/nessus/nessus-${V}/src/

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--localstatedir=/var	\
		--sharedstatedir=/var	\
		--disable-nessuspcap	\
		--enable-bpf-sharing	\
		--enable-shared

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${V}//:S/-GPL//}
