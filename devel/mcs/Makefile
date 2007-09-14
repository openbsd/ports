# $OpenBSD: Makefile,v 1.2 2007/09/14 21:04:13 steven Exp $

COMMENT=	abstract the storage of configuration settings

V=		0.5.0
DISTNAME=	libmcs-$V
PKGNAME=	mcs-$V

SHARED_LIBS=	mcs	0.1 \
		keyfile	0.1

CATEGORIES=	devel

HOMEPAGE=	http://www.atheme.org/projects/mcs.shtml

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://distfiles.atheme.org/
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu

MAKE_ENV=	LIBmcs_VERSION=${LIBmcs_VERSION} \
		LIBkeyfile_VERSION=${LIBkeyfile_VERSION}

NO_REGRESS=	Yes

.include <bsd.port.mk>
