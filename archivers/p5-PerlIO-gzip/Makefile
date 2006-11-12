# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 16:27:26 espie Exp $

COMMENT= 	"PerlIO layer to gzip/gunzip"

MODULES=	cpan

SHARED_ONLY=	Yes
DISTNAME=	PerlIO-gzip-0.18
CATEGORIES=	archivers

a:
	echo ${DISTNAME:C/-.*$//}
# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
