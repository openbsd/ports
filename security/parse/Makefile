# $OpenBSD: Makefile,v 1.16 2007/09/15 23:30:00 merdely Exp $

COMMENT=	watch a tcpdump trace in real-time

DISTNAME=	parse
PKGNAME=	parse-1.0
CATEGORIES=	security

PERMIT_PACKAGE_CDROM=	commercial. licensing restrictions.
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial. licensing restrictions.
PERMIT_DISTFILES_FTP=	Yes       
WANTLIB=		c pcap

MASTER_SITES=	ftp://ftp.sdsc.edu/pub/security/PICS/parse/
EXTRACT_SUFX=	.t.gz
EXTRACT_CASES=	*.t.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

NO_REGRESS=	Yes

.include <bsd.port.mk>
