# $OpenBSD: Makefile,v 1.13 2004/07/25 17:36:20 couderc Exp $

COMMENT=	"watch a tcpdump trace in real-time"

DISTNAME=	parse
PKGNAME=	parse-1.0
CATEGORIES=	security

MAINTAINER=	Francois Briere <fbriere@imaginatif.org>

PERMIT_PACKAGE_CDROM=	"commercial. licensing restrictions."
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial. licensing restrictions."
PERMIT_DISTFILES_FTP=	Yes       

MASTER_SITES=	ftp://ftp.sdsc.edu/pub/security/PICS/parse/
EXTRACT_SUFX=	.t.gz
EXTRACT_CASES=	*.t.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

NO_REGRESS=	Yes

.include <bsd.port.mk>
