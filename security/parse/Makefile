# $OpenBSD: Makefile,v 1.8 2001/07/12 15:06:53 naddy Exp $

COMMENT=	"watch a tcpdump trace in real-time"

DISTNAME=	parse
PKGNAME=	parse-1.0
CATEGORIES=	security
NEED_VERSION=	1.402

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"commercial. licensing restrictions."
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial. licensing restrictions."
PERMIT_DISTFILES_FTP=	Yes       

MASTER_SITES=	ftp://ftp.sdsc.edu/pub/security/PICS/parse/
EXTRACT_SUFX=	.t.gz
EXTRACT_CASES=	*.t.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

.include <bsd.port.mk>
