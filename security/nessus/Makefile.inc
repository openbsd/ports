# $OpenBSD: Makefile.inc,v 1.1.1.1 2005/05/16 16:02:56 sturm Exp $

VERSION=	2.2.4
CATEGORIES=	security

HOMEPAGE=	http://www.nessus.org/

MAINTAINER= 	Alexandre Anriot <aanriot@atlantilde.com>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=   ftp://ftp.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://mirror.arc.nasa.gov/pub/tools/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.gwdg.de/pub/linux/misc/nessus/nessus-${VERSION}/src/ \
                ftp://nessus.via.ecp.fr/nessus/nessus-${VERSION}/src/ \
                ftp://sunsite.cnlab-switch.ch/mirror/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.chg.ru/pub/security/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.sekure.net/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.nectec.or.th/pub/mirrors/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.pt.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.au.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.stuff.ca/pub/nessus/nessus-${VERSION}/src/src/ \
                ftp://ftp.at.nessus.org/pub/nessus/nessus-${VERSION}/src/ \
                ftp://ftp.linux.org.tr/pub/nessus/nessus-${VERSION}/src/ \
                ftp://cvs.nessus.org/pub/nessus/nessus-${VERSION}/src/

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--localstatedir=/var 	\
			--disable-nessuspcap 	\
                	--sharedstatedir=/var 	\
			--enable-shared 	\
			--enable-bpf-sharing

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME:S/-${VERSION}//}
