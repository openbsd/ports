# $OpenBSD: Makefile,v 1.1.1.1 2007/04/09 07:36:35 steven Exp $

COMMENT=	"abstract the storage of configuration settings"

DISTNAME=	mcs-0.4.1

SHARED_LIBS=	mcs	0.0 \
		keyfile	0.0

CATEGORIES=	devel

HOMEPAGE=	http://sacredspiral.co.uk/~nenolod/mcs/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu

MAKE_ENV=	LIBmcs_VERSION=${LIBmcs_VERSION} \
		LIBkeyfile_VERSION=${LIBkeyfile_VERSION}

NO_REGRESS=	Yes

.include <bsd.port.mk>
