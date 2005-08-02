# $OpenBSD: Makefile.inc,v 1.5 2005/08/02 12:37:27 aanriot Exp $

VERSION=	2.2.5
CATEGORIES=	security

HOMEPAGE=	http://www.nessus.org/

MAINTAINER= 	Alexandre Anriot <aanriot@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=   ftp://ftp.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${VERSION}/src/ \
                ftp://sunsite.cnlab-switch.ch/mirror/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.at.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.linux.org.tr/pub/nessus/nessus-${VERSION}/src/

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--localstatedir=/var 	\
			--disable-nessuspcap 	\
                	--sharedstatedir=/var 	\
			--enable-shared 	\
			--enable-bpf-sharing

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${VERSION}//:S/-GPL//}
