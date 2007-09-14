# $OpenBSD: Makefile,v 1.1.1.1 2007/09/14 21:16:14 steven Exp $

COMMENT=	performance and usability oriented extensions to C

V=		0.4.0
DISTNAME=	libmowgli-$V
PKGNAME=	mowgli-$V

SHARED_LIBS=	mowgli	0.0

CATEGORIES=	devel

HOMEPAGE=	http://www.atheme.org/projects/mowgli.shtml

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.atheme.org/
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu

MAKE_ENV=	LIBmowgli_VERSION=${LIBmowgli_VERSION}

NO_REGRESS=	Yes

.include <bsd.port.mk>
