# $OpenBSD: Makefile.inc,v 1.1.1.1 2001/09/16 16:47:32 naddy Exp $

ONLY_FOR_ARCHS=	i386

CATEGORIES=	emulators
NEED_VERSION=	1.456

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.redhat.com/pub/%SUBDIR%/ \
		ftp://ftp.sourceforge.net/pub/mirrors/redhat/%SUBDIR%/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.redhat.com/pub/%SUBDIR%/ \
		ftp://ftp.uni-bayreuth.de/pub/redhat.com/%SUBDIR%/

DIST_SUBDIR=	rpm
EXTRACT_ONLY=

BUILD_DEPENDS=	rpm2cpio::misc/rpm

NO_BUILD=	Yes

PREFIX=		${LOCALBASE}/emul/redhat
